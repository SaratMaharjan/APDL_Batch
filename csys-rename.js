
var SC = DS.Script;
var SM = SC.sm;
function csys_Rename() {
	//debugger;
	var c4 = DS.Tree.FirstActiveBranch.CoordinateSystemGroup;
	var c5 = c4.Children.Count;
	for(var i = 2; i <= c5; i++) {
		//c4.Children.Item(2).CoordinateSystemType = SC.id_Cylindrical
		var c6 = c4.Children.Item(i);
		c6.Name = "csys_local" + (i-1);
		c6.AnsysSystemAuto = 0;
		c6.AnsysSystemNumber = 20 + i - 1;
		c6.PrimaryAxis = 3;
		//c6.PrimaryAxisAlignment = 4;
		c6.PrimaryAxisAlignment = 1;
		//c6.PrimaryAxisSelection = part;
		//td_new_sel_ns("Group"+i);
		//var part_id = SM.SelectedPartID(1);
		//var part = SM.PartMgr.PartById(part_id);
	}
	SC.refreshTree();
}

csys_Rename();
