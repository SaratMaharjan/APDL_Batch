/* eslint-disable */
function my_func() {
  debugger;
  //var my_array = new Array();
  //for(var i = 0; i < 10; i++) {
  //my_array[i] = 2*i;
  //}

  var SC = DS.Script;
  var SM = SC.sm;

  var c4 = DS.Tree.FirstActiveBranch.CoordinateSystemGroup;
  //SM.SelectAll();
  //SC.doCreateCoordinateSystem();
  var c5 = c4.Children.Count;
  for (var i = 2; i <= c5; i++) {
    var c6 = c4.Children.Item(i);
    c6.Name = "clocal" + i;
    c6.AnsysSystemAuto = 0;
    c6.AnsysSystemNumber = 20 + i;
  }
  SC.refreshTree();
  debugger;
}

my_func();
