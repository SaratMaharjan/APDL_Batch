/* eslint-disable */
// This string contains the HTML code for the dialog box
// we will present to the user
var html_text =
'<html xmlns="http://www.w3.org/1999/xhtml" >\n'+
'<head>\n'+
'<title>Slice Plane Creation Tool</title>\n'+
'<style type="text/css">\n'+
'    body\n'+
'    {\n'+
'        background: buttonface;\n'+
'        font: messagebox;\n'+
'    }\n'+
'    table\n'+
'    {\n'+
'        border-collapse:collapse;\n'+
'        font: messagebox;\n'+
'    }\n'+
'    select\n'+
'    {\n'+
'        margin: 2px 8px 2px 4px;\n'+
'        width: 250px;    \n'+
'        height: 28px;\n'+
'    }\n'+
'    input\n'+
'    {\n'+
'        margin: 0px 4px 0px 0px;\n'+
'    }\n'+
'</style>\n'+
'<script type="text/javascript">\n'+
'    var wb, xfer;\n'+
'    function window_onload() {\n'+
'        xfer = window.external;\n'+
'        wb = xfer("wb");\n'+
'        var cs_group = xfer(\'csys_group\');\n'+
'        var cs_select = xfer(\'csys_select\');\n'+
'        if (cs_group != null) {\n'+
'            populate_coordinate_systems(cs_group, cs_select);\n'+
'        }\n'+
'    }\n'+
'    function window_onunload() {\n'+
'        xfer("CSYS") = parseInt(csys_select.value);\n'+
'        xfer("CreateSlicePlane") = create_plane.checked;\n'+
'        xfer("ViewPlane") = view_plane.checked;\n'+
'    }\n'+
'    function populate_coordinate_systems(cs_group, cs_select) {\n'+
'        csys_select.options.length=0;\n'+
'        for (var i = 1; i <= cs_group.Children.Count; i++) {\n'+
'            var csys = cs_group.Children.Item(i);\n'+
'            var csys_name = csys.Name;\n'+
'            var csys_id = csys.ID;\n'+
'            if (csys_id == cs_select) {\n'+
'                csys_select.options[i - 1] = new Option(csys_name, csys_id, true, true);\n'+
'            } else {\n'+
'                csys_select.options[i - 1] = new Option(csys_name, csys_id, false, false);\n'+
'            }\n'+
'        }\n'+
'    }\n'+
'</script>\n'+
'</head>\n'+
'<body onload="window_onload()" onunload="window_onunload()" scroll="no">\n'+
'<table>\n'+
'<tr>\n'+
'<td>\n'+
'<table>\n'+
'<tr>\n'+
'<td nowrap="true">Coordinate System: </td>\n'+
'<td><select id="csys_select"></select></td>\n'+
'</tr>\n'+
'</table>\n'+
'</td>\n'+
'</tr>\n'+
'<tr>\n'+
'<td>\n'+
'<input id="create_plane" type="checkbox" checked="checked" />Create Slice Plane\n'+
'</td>\n'+
'</tr>\n'+
'<tr>\n'+
'<td>\n'+
'<input id="view_plane" type="checkbox"  />Look at Plane\n'+
'</td>\n'+
'</tr>\n'+
'</table>\n'+
'</body>\n'+
'</html>\n';


var SC = DS.Script;

// Entry point for the whole script.
function main() {

    // Create the dialog
    var slice_plane_dialog =
        SC.CreateActiveXObject(
            SC.GenWBProgId('WBControls.WBHTMLDialog')
            );
    var dlg_OK = 1;
    var dlg_Cancel = 2;
    var dlg_VScroll = 4;
    var flags = dlg_OK | dlg_Cancel | dlg_VScroll;
    var caption = 'Slice Plane From Coordinate System';
    var width = 410;
    var height = 110;
    var b_modal = false;
    // Create the html code from a temporary file
    var fso = SC.fso;
    var tfolder = fso.GetSpecialFolder(2);
    var tname = fso.GetTempName();
    var tfile = tfolder.CreateTextFile(tname, true);
    tfile.WriteLine(html_text);
    tfile.Close();
    var path = fso.BuildPath(tfolder.Path, tname);
    var xfer =
        SC.CreateActiveXObject(
            SC.GenWBProgId('WBControls.DlgArgs')
            );

    xfer('wb') = WB;
    xfer('dlg') = slice_plane_dialog;
    var csys_group = get_coordinate_system_group();

    if(csys_group == null) {
        SC.WBScript.Out('Cannot find the coordinate system group in the tree.' +
                        ' Please create a coordinate system first', true);
        return;
    }
    // Pass over to the dialog the coordinate system group.
    xfer('csys_group') = csys_group;
    var active_obj = DS.Tree.FirstActiveObject;
    if (active_obj.Class == SC.id_CoordinateSystem) {
        xfer('csys_select') = active_obj.ID;
    } else {
        xfer('csys_select') = -1;
    }
    // Show the dialog
    var ret = slice_plane_dialog.DoDialog(WB.hWnd,
                                          path,
                                          xfer,
                                          b_modal,
                                          width,
                                          height,
                                          flags,
                                          caption);
    if (ret == 1) {
        // We get here if the user presses OK on the dialog,
        // so lets grab the user's choices back from the selection.
        var selected_csys = xfer('CSYS');
        var create_plane = xfer('CreateSlicePlane');
        var look_at= xfer('ViewPlane');
        // Do the work here
        var origin = get_coordinate_system_origin(selected_csys);
        var z_axis = get_coordinate_system_z_axis(selected_csys);
        var y_axis = get_coordinate_system_y_axis(selected_csys);
        // Bail out if we can't create the vectors for the coordinate system
        if (origin == null || z_axis == null || y_axis == null) {
            SC.WBScript.Out('Cannot determine the coordinate system vectors.' +
                            ' Unable to create slice plane', true);
            return;
        }
        if (create_plane == true) {
            create_slice_plane(origin, z_axis, y_axis);
        }
        if (look_at == true) {
            look_at_plane(origin, z_axis, y_axis);
        }
    }

    // Delete the html file to clean up
    fso.DeleteFile(path);
}

// Very simple utility function that is used to write out an html
// file to another file in javascript string format.  This is useful
// for pasting into a source file to package the html file into
// a single source script for distribution purposes.
function write_html(path) {
    var fso = SC.fso;
    var input = fso.OpenTextFile(path, 1, false);
    var output = fso.CreateTextFile(path + '.out', true);

    while (!input.AtEndOfStream) {
        var line = input.ReadLine();
        output.WriteLine('\'' + line + '\\' + 'n\'+');

    }
    output.WriteLine('\'\';');
    output.Close();
    input.Close();
}

// Return the origin of a given coordinate system
function get_coordinate_system_origin(csys_id) {
    var csys = get_coordinate_system(csys_id);
    if (csys == null) {
        return null;
    }
    return [csys.OriginXLocation,
            csys.OriginYLocation,
            csys.OriginZLocation];
}

// Return a vector oriented along the z axis of a given
// coordinate system
function get_coordinate_system_z_axis(csys_id) {
    var csys = get_coordinate_system(csys_id);
    if (csys == null) {
        return null;
    }
    return normalize([csys.ZDirectionXValue,
                      csys.ZDirectionYValue,
                      csys.ZDirectionZValue]);
}

// Return a vector oriented along the y axis of a given
// coordinate system
function get_coordinate_system_y_axis(csys_id) {
    var csys = get_coordinate_system(csys_id);
    if (csys == null) {
        return null;
    }
    return normalize([csys.YDirectionXValue,
                      csys.YDirectionYValue,
                      csys.YDirectionZValue]);
}

// Return an actual coordinate system object given
// a tree ID.
function get_coordinate_system(csys_id) {
    var group = get_coordinate_system_group();
    if (group == null) {
        return null;
    }
    for (var i = 1; i <= group.Children.Count; i++) {
        var child = group.Children.Item(i);
        if (child.ID == csys_id) {
            return child;
        }
    }
    return null;
}

// Return the coordinate system group in the tree.
function get_coordinate_system_group() {
    var branch = SC.getActiveBranch();
    if (branch == null) {
        return null;
    }
    return branch.CoordinateSystemGroup;
}

// Create a slice plane given a point, plane normal and up
// vector.  This function uses the orientation functions
// below
function create_slice_plane(point, plane_normal, inplane_up) {
    // Get a handle to the slicetool
    var slice_tool = DS.Graphics.SliceTool;

    // Orient the view using our view orientation functions
    for (var i = 0; i < 3; i++) {
        rotate_view(inplane_up);
        pan_view(point);
        rotate_up(plane_normal);
        DS.Graphics.Refresh();
    }

    // Get the window's dimensions
    var height = DS.Graphics.GfxWindow.height;
    var width = DS.Graphics.GfxWindow.width;

    // Create the slice plane
    var slice_plane =
        slice_tool.SetPlane(0, height / 2, width, height / 2);
    DS.Graphics.Refresh();
}

// Look at a particular point along an axis.  This is useful
// for looking at a slice plane after it has been created.
function look_at_plane(point, normal, up) {
    // Orient the view using our view orientation functions

    // Orient the view using our view orientation functions
    for (var i = 0; i < 3; i++) {
        rotate_view(normal);
        pan_view(point);
        rotate_up(up);
        DS.Graphics.Refresh();
    }

}

// Calculate the dot product of two vectors
function dot(va, vb) {
    return va[0] * vb[0] + va[1] * vb[1] + va[2] * vb[2];
}

// Calculate the length of a vector
function norm(va) {
    return Math.sqrt(va[0] * va[0] + va[1] * va[1] + va[2] * va[2]);
}

// Normalize a vector
function normalize(va) {
    var len = norm(va);
    if (len != 0.0) {
        return [va[0] / len, va[1] / len, va[2] / len];
    }
}

// Calculate the cross product of two vectors
function cross(va, vb) {
    return [va[1] * vb[2] - va[2] * vb[1],
            va[2] * vb[0] - va[0] * vb[2],
            va[0] * vb[1] - va[1] * vb[0]];
}

// Scale a vector by a scalar
function scale(va, sc) {
    return [va[0] * sc, va[1] * sc, va[2] * sc];
}

// Add two vectors
function add(va, vb) {
    return [va[0] + vb[0],
            va[1] + vb[1],
            va[2] + vb[2]];
}

// Subtract vector b from vector a
function sub(va, vb) {
    return [va[0] - vb[0],
            va[1] - vb[1],
            va[2] - vb[2]];
}

function are_parallel(va, vb, tol) {
    return 1.0 - (Math.abs(dot(va, vb)) / (norm(va) * norm(vb))) < tol ? true : false;
}

function are_perpendicular(va, vb, tol) {
    return (Math.abs(dot(va, vb)) / (norm(va) * norm(vb))) < tol ? true : false;
}

// Rotate the view around so that we are looking in the
// direction of the desired view
function rotate_view(desired_view) {
    // Get the camera and graphics objects
    var camera = DS.Graphics.Camera;
    var graphics = DS.Graphics;
    // This is our tolerance for being parallel to the desired view
    var eps = 1e-7;
    // This is the maximum number of iterations we'll try.
    // While loops with a tolerance check only scare me...
    var max_iter = 200;
    // Get the current view
    var view_c = normalize([camera.ViewDirectionX,
                            camera.ViewDirectionY,
                            camera.ViewDirectionZ]);
    // Make sure we're normalized
    dvd = normalize(desired_view);
    // This should be close to 1 if parallel.

    var cnt = 1;
    var b_first_arg = true;
    var normal = null;
    var trial = null;
    var view_p = null;
    var trial_ang = 15;
    var applied_rotation = null;
    var previous_up = 0;
    var previous_right = 0;
    var right_factor = up_factor = -1.0;
    // Loop until we're parallel, or we give up trying
    do {
        var factor = cnt / max_iter;
        factor *= factor;
        factor *= factor;
        // Get the view direction
        vd = normalize([camera.ViewDirectionX,
                        camera.ViewDirectionY,
                        camera.ViewDirectionZ]);
        // Get the current up vector
        camera.rotate(trial_ang, 0);
        trial = normalize([camera.ViewDirectionX,
                       camera.ViewDirectionY,
                       camera.ViewDirectionZ]);
        current_up = normalize(cross(trial, vd));
        // Rotate back so we don't lose our place
        camera.rotate(-trial_ang, 0);


        vd = normalize([camera.ViewDirectionX,
                        camera.ViewDirectionY,
                        camera.ViewDirectionZ]);

        if (b_first_arg) {
            camera.rotate(trial_ang, 0);
        } else {
            camera.rotate(0, trial_ang);
        }
        trial = normalize([camera.ViewDirectionX,
                           camera.ViewDirectionY,
                           camera.ViewDirectionZ]);
        n = normalize(cross(vd, trial));
        // Rotate back
        if (b_first_arg) {
            camera.rotate(-trial_ang, 0);
        } else {
            camera.rotate(0, -trial_ang);
        }
        vd = normalize([camera.ViewDirectionX,
                        camera.ViewDirectionY,
                        camera.ViewDirectionZ]);
        // Only do this rotation if our desired view vector
        // is not nearly parallel to our current axis of rotation
        // If it is, then the code inside the if statement will
        // be skipped.
        if (!are_parallel(dvd, n, eps)) {
            // Project the desired view vector onto our plane of rotation
            vp = normalize(cross(n, normalize(cross(dvd, n))));
            // Calculate the angle between the projected vector
            // and our current view direction
            dot_product = dot(vp, vd);
            needed_rotation = Math.acos(dot(vp, vd)) * 180 / Math.PI

            // Knock it down by a factor associated with our iteration
            // scheme.  This helps prevent spurious jittering as we
            // make our way there.
            needed_rotation *= (1.0 - factor);
            if (b_first_arg) {
                // If we start to diverge, try rotating back the other way
                if(previous_up < needed_rotation) {
                    up_factor = (up_factor < 0.0) ? 1.0 : -1.0;
                    previous_up = needed_rotation;
                }
                camera.rotate(up_factor * needed_rotation, 0.0);


            } else {
                if (previous_right < needed_rotation) {
                    right_factor = (right_factor < 0.0) ? 1.0 : -1.0;
                    previous_right = needed_rotation;
                }
                camera.rotate(0.0, right_factor * needed_rotation);
            }
        }
        // See if we are there yet
        vd = normalize([camera.ViewDirectionX,
                        camera.ViewDirectionY,
                        camera.ViewDirectionZ]);
        b_rotate_converged = are_parallel(vd, dvd, eps);
        if (b_rotate_converged) break;
        // Flip directions
        b_first_arg = !b_first_arg;
//        DS.Graphics.Refresh();
    } while (cnt++ < max_iter);

}

function rotate_up(desired_up_vector) {

    // Get the camera and graphics objects
    var camera = DS.Graphics.Camera;
    var graphics = DS.Graphics;
    var view_c = null;
    var trial = null;
    var current_up = null;
    var theta = null;
    var trial_ang = 15;
    var theta1;
    var theta2;
    var eps = 0.01;
    // Make sure our passed in value is normalized
    duv = normalize(desired_up_vector);

    // Which way are we currently looking now?
    vd = normalize([camera.ViewDirectionX,
                    camera.ViewDirectionY,
                    camera.ViewDirectionZ]);

    // Perform our trial rotation about the screen vertical axis
    camera.rotate(trial_ang, 0);
    trial = normalize([camera.ViewDirectionX,
                       camera.ViewDirectionY,
                       camera.ViewDirectionZ]);
    up = normalize(cross(trial, vd));
    // Rotate back so we don't lose our place
    camera.rotate(-trial_ang, 0);
    // How much to we need to rotate?
    theta1 = Math.acos(dot(duv, up)) * 180 / Math.PI;
    // Rotate assuming a positive rotation
    camera.rotateZ(theta1);
    DS.Graphics.Refresh();
    // Now we need to test to see if this is indeed the proper direction
    // Which way are we currently looking now?
    vd = normalize([camera.ViewDirectionX,
                    camera.ViewDirectionY,
                    camera.ViewDirectionZ]);
    // Perform our trial rotation about the screen vertical axis
    camera.rotate(trial_ang, 0);
    trial = normalize([camera.ViewDirectionX,
                       camera.ViewDirectionY,
                       camera.ViewDirectionZ]);
    up = normalize(cross(trial, vd));
    // Rotate back so we don't lose our place
    camera.rotate(-trial_ang, 0);
    // How much to we need to rotate?
    theta2 = Math.acos(dot(duv, up)) * 180 / Math.PI;
    if (theta2 > theta1) {
        // Rotate backwards if our second guess is larger than our first
        camera.rotateZ(-theta2);
//        DS.Graphics.Refresh();
    }
}

function pan_view(desired_point) {
    // Get the camera and graphics objects
    var camera = DS.Graphics.Camera;
    var graphics = DS.Graphics;
    // Maximum amount to pan by
    var height = DS.Graphics.GfxWindow.height;
    var width = DS.Graphics.GfxWindow.width;
    // The current focus point
    var fp = null;
    // The trial focus point
    var fp_trial = null;
    // The trial amount to pan
    var trial_pan = (height + width) / 40;  //Unit is pixels...
    // View direction
    var view_v = null;
    // Vector from the focus point to the desired point
    var fp_to_dp = null;
    // Vector of pan direction
    var pan_dir = null;
    // The amount we are going to pan
    var pan_amount = null;
    // Tolerance for determining if the view vector is parallel
    // to the focus point to desired point vector
    var eps = 1e-4;
    // We'll flip back and forth between panning up and panning right
    var b_first_arg = true;
    // The current count of our iteration
    var cnt = 0;
    // The maximum number of iterations to perform
    var max_iter = 200;

    var look_at = desired_point;
    var max_pan = (height + width) / 20;
    do {
        fp = [camera.FocusPointX,
              camera.FocusPointY,
              camera.FocusPointZ];
        vd = normalize([camera.ViewDirectionX,
                        camera.ViewDirectionY,
                        camera.ViewDirectionZ]);

        if (b_first_arg == true) {
            camera.pan(trial_pan, 0);
        } else {
            camera.pan(0, trial_pan);
        }
        trial = [camera.FocusPointX,
                 camera.FocusPointY,
                 camera.FocusPointZ];
        // In world coordinates, see which direction this pan took us
        pd = sub(trial, fp);
        // Project this onto a plane defined by the current view
        // vector
        pd_in_view = cross(vd, cross(pd, vd));

        // Move back to our original location
        if (b_first_arg == true) {
            camera.pan(-trial_pan, 0);
        } else {
            camera.pan(0, -trial_pan);
        }
        fp = [camera.FocusPointX,
              camera.FocusPointY,
              camera.FocusPointZ];
        // Take a vector from the current focus point to the
        // desired center point
        fp_to_dp = normalize(sub(look_at, fp));
        // Only try to pan the view if the vector between our focus
        // point and view vector are not parallel.
        if (Math.abs(1.0 - Math.abs(dot(fp_to_dp, vd))) > eps) {
            // Project this onto a plane defined by the view direction
            fp_to_dp_in_view = cross(vd, cross(fp_to_dp, vd));

            // Normalize the pan test vector so we can walk our way there
            pd_in_view = normalize(pd_in_view);

            // Figure out how much we need to pan

            pan_amount = trial_pan * dot(fp_to_dp_in_view, pd_in_view);
            // Knock it down by a factor associated with our iteration
            // scheme.  This helps prevent spurious jittering as we
            // make our way there.
            var factor = cnt / max_iter;
            pan_amount *= (1.0 - factor * factor * factor);

            if (b_first_arg == true) {
                camera.pan(pan_amount, 0);
            } else {
                camera.pan(0, pan_amount);
            }
            b_pan_converged = false;
        } else {
            b_pan_converged = true;
        }
        // Flip the direction
        b_first_arg = !b_first_arg;
//        graphics.Refresh();
    } while (cnt++ < max_iter && !b_pan_converged);
}

main();

