
function td_does_ns_exist(ns) { 
	var tree_id = DS.Tree.FindObjectByString(ns, true, true); 
	if (tree_id == 0) { 
		return false; 
	} else { 
		return true; 
	} 
} 

// Return the type of a particular named selection. That is, what 
// topological type of geometry is contained in this named selection. 
function td_get_ns_scope_type(ns) { 
	var tree_id = DS.Tree.FindObjectByString(ns, true, true); 
	// Bail out of the named selection does not exist 
	if (tree_id == 0) { 
		return 'unknown'; 
	} 
	var tree_object = DS.Tree.GetObject(tree_id); 
	switch (tree_object.ScopedType) { 
		case SC.id_AssemblyScoping: 
			return 'assembly'; 
		case SC.id_PartScoping: 
			return 'part'; 
		case SC.id_SurfaceScoping: 
			return 'surface'; 
		case SC.id_UnknownScoping: 
			return 'unknown'; 
		case SC.id_VertexScoping: 
			return 'vertex'; 
		case SC.id_EdgeScoping: 
			return 'edge'; 
		default: 
			return 'unknown'; 
	} 
} 

function td_get_tree_object_by_name(name) { 
	var ids = new Array(); 
	while (true) { 
		var tree_id = DS.Tree.FindObjectByString(name, true, true); 
		if (tree_id == 0) { 
			break; 
		} 
		// Jump out if we've already been through this group 
		if (ids[tree_id] != null) { 
			tree_id = 0; 
			break; 
		} 
		ids[tree_id] = 1; 
		var tree_object = DS.Tree.GetObject(tree_id); 
		if (tree_object.Name == name) { 
			return tree_object; 
		} 
		SC.changeActiveObject(tree_id); 
	} 
	if (tree_id == 0) { 
		return null; 
	} 
} 

function td_new_sel_ns(ns) { 
	var tree_object = td_get_tree_object_by_name(ns); 
	// Again, bail out if something weird happens. 
	if (tree_object == null) { 
		return false; 
	} 
	// Clear the selection manager 
	SM.Clear(); 
	SC.HelpTreeActivateSelection(tree_object); 
	SC.HelpTreeAddToSelection(tree_object); 
	if (SM.SelectedCount > 0) { 
		return true; 
	} else { 
		return false; 
	} 
} 

function td_add_sel_ns(ns) { 
	var sel_count = SM.SelectedCount; 
	var tree_object = td_get_tree_object_by_name(ns); 
	// Again, bail out if something weird happens. 
	if (tree_object == null) { 
		return false; 
	} 
	SC.HelpTreeActivateSelection(tree_object); 
	SC.HelpTreeAddToSelection(tree_object); 
	if (SM.SelectedCount > sel_count) { 
		return true; 
	} else { 
		return false; 
	} 
} 

function td_remove_sel_ns(ns) { 
	var tree_object = td_get_tree_object_by_name(ns); 
	// Again, bail out if something weird happens. 
	if (tree_object == null) { 
		return false; 
	} 
	SC.HelpTreeActivateSelection(tree_object); 
	SC.HelpTreeRemoveFromSelection(tree_object); 
	return true; 
} 

var SC = DS.Script; 
var SM = SC.sm; 
for(var ii = 1; ii <= 11; ii++){
	td_new_sel_ns("kc"+ii);
	SC.doCreateCoordinateSystem();
}
//td_new_sel_ns("Group2");
//SC.doCreateCoordinateSystem();
//td_new_sel_ns("Group3");
//SC.doCreateCoordinateSystem();

