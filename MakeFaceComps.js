/****************************************************************************
 *                                                      Phoenix Analysis And
 *                                                       Design Technologies
 ****************************************************************************
 *  This script is designed to be run from the Tools->Run Macro menu from
 *  within ANSYS Mechanical.  The purpose of the script is to create a named
 *  selection for each individual face within the currently selected body.  
 *  This script makes use of the addNamedSelection() ANSYS Mechanical function 
 *  to actually create the component once the selection has been made.
 ***************************************************************************/

//  NOTE: The base name below is used as the first part of each named
//  selection name.  Change this to something more appropriate if you desire.
var basename = 'faces';

//  Here are a series of global variables that hold references to some
//  of the main objects in the mechanical application.

//  NOTE: The DS object is defined by the script engine ahead of time.  This
//  object references the main ANSYS Mechanical application

//  The script code object is a reference to the javascript engine embedded
//  inside the mechanical application.  This object has all of the functions
//  that are defined in the ANSYS mechanical javascript files
var SC = DS.Script;

//  The selection manager object is a reference to the ANSYS mechanical 
//  geometry selection tool.  This is a complex object that contains 
//  references to the currently selected set of geometric entities.  More
//  importantly, it contains back pointers to entity ids within the 
//  Mechanical BREP structure.
var SM = SC.sm;

//  NOTE:  The ANSYS Mechanical BREP structure is a classical topological
//  data structure that defines the connectivity of the geometry within
//  the currently opened model.  This structure consists of lists of
//  vertices, edges, faces, shells, bodies and parts.  More importantly,
//  the connectivity between these entities is represented in the data
//  structure as "use" lists.  For example, a vertex contains a list
//  of edges to which it is attached.  Likewise, an edge contains a list
//  of faces to which it is attached, as well as a pointer to the start
//  and end vertices of the edge.  With this information, one can "walk"
//  the topology of the part by iterating over the various use lists.
//  For this macro, we will grab all of the faces attached to a given
//  body using the BREP structure as a guide.

//  These type constants are encoded into the top two bits of a given
//  brep entity id.
var BODY_TOPO_TYPE = 3;
var FACE_TOPO_TYPE = 2;
var EDGE_TOPO_TYPE = 1;
var VERT_TOPO_TYPE = 0;

//  There is no concept of "main" in javascript, but it makes it easy to
//  find the entry point to the script.  There is a call to this function at
//  the bottom of this script
function main() {
    // First, see if we have a body selected.  If not, report to 
    // the user that a body must be selected first.
    if (SM.Parts > 0) {
        // Do the real work
        create_faces_ns_from_body();
    } else {
        SC.WBScript.Out('You must select a body before running the \
FacesFromBody.js macro.  Please select a body and re-run this \
macro.', true);
    }
}

// This function simply picks off the top two bits of a given topo id
// and returns the decimal value [0, 1, 2 or 3]  This corresponds to
// the topological types:
//      BODY_TOPO_TYPE = 3
//      FACE_TOPO_TYPE = 2
//      EDGE_TOPO_TYPE = 1
//      VERT_TOPO_TYPE = 0
function classify_entity_type(topo_id) {
    // The top two bits store the topological entity type within the topo
    // id value
    var type = topo_id >>> 30;
    return type;
}



// This function creates a named selection of all the faces associated with
// the currently selected body(s).  
// Pre Condition:   At least one body must be selected.
// Post Condition:  The selection manager will be cleared and a new named
//                  selection will exist for each face in the body.  The
//                  named selection will be of the form:
//                  basename_partid_faceid
function create_faces_ns_from_body() {
    // See structure definition below.
    var face_id_map = new Array(SM.Parts);

    // First we want to iterate over the selected parts and create
    // a list of all of the face ids for each selected part
    for (var i = 1; i <= SM.SelectedCount; i++) {
        var topo_id = SM.SelectedEntityTopoID(i);
        var part_id = SM.SelectedPartID(i);

        // Make sure this is a body.  If not, just continue around
        if (classify_entity_type(topo_id) != BODY_TOPO_TYPE) {
            continue;
        }
        var part = SM.PartMgr.PartById(part_id);
        var brep = part.BRep;
        // Pull the body object out of the BRep structure.  The call
        // for this is the Cell function with the topological id for
        // the body of interest
        body = brep.Cell(topo_id);
                
        // This array will be used to hold a list of face ids for a given
        // body.
        var face_ids = new Array();
        // These are the actual face objects associated with this body
        var faces = body.Faces;
        // Now store all of the face ids in our face id list
        for (var f = 1; f <= faces.Count; f++) {
            face_ids.push(faces(f).Id);
        }
        // Now that we have the face ids, put them into an array of structures
        // that each look like the following:
        // |-------|
        // |   0   |-> Part ID
        // |-------|
        // |-------|
        // |   1   |-> List of face ids for this part ID
        // |-------|
        face_id_map[i - 1] = new Array(2);
        face_id_map[i - 1][0] = part_id;
        face_id_map[i - 1][1] =
            face_ids.slice(0, face_ids.length); // Slice creates a copy of the array

    }
    // Now that we've built up our datastructure of face ids, we need to select them all
    SM.Clear();
    var name = null;
    for (var i = 0; i < face_id_map.length; i++) {
        var part_id = face_id_map[i][0];
        var face_ids = face_id_map[i][1];
        for (var j = 0; j < face_ids.length; j++) {
            SM.Clear();
            // Create a unique name based on the part id and face id
            name = basename + '_' + part_id.toString() + '_' + face_ids[j].toString();
            SM.AddToSelection(part_id, face_ids[j], false);
            // Create the component
            SC.addNamedSelection(false, name, SC.id_NS_UnknownMultiCriterion);           
        }
    }
    // Clear out the selection manager
    SM.Clear();
}

// Make it happen...
main();