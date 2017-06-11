var SC = DS.Script;
var SM = SC.sm;

function select_nonshared_faces() {
	// Change the picking filter to faces, if it is not
	SM.Clear();
	var old_pick_filter = DS.Graphics.EntityFilter;
	DS.Graphics.EntityFilter = SC.id_FaceFilter;
	SM.SelectAll();
	// Now, iterate over all of the selected faces and make
	// note of the ones that have a FaceUse greater than 1. This
	// indicates this face is shared
	var shared_faces = new Array();
	for (var i = 1; i <= SM.SelectedCount; i++) {
		var part_id = SM.SelectedPartID(i);
		var face_id = SM.SelectedEntityTopoID(i);
		var part = SM.PartMgr.PartById(part_id);
		var brep = part.BRep;
		var face = brep.Cell(face_id);
		if (face.FaceUses.Count > 1) {
			shared_faces.push([part_id, face_id]);
		}
	}
	// Now, unselect the shared faces
	for (var i = 0; i < shared_faces.length; i++) {
		SM.RemoveFromSelection(shared_faces[i][0], shared_faces[i][1]);
	}
	// Change the selection filter back to whatever it was
	DS.Graphics.EntityFilter = old_pick_filter;
	DS.Graphics.Refresh();
}

select_nonshared_faces();
