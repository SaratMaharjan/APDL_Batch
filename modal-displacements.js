
      //function my_func() {
        ////debugger;
        //var my_array = new Array();
        //for(var i = 0; i < 10; i++) {
          //my_array[i] = 2*i;
        //}
      //}
      //my_func();

      //function slice_tool_interrogate() {
        //debugger;
        //var slice_tool = DS.Graphics.SliceTool;
        //// Useless code to give us a place
        //// to stop
        //var i = 1;
      //}
      //slice_tool_interrogate();

var SC = DS.Script;
var SM = SC.sm;

function get_stress_environment() {
  // Pick out the stress environment
  var branch = SC.getActiveBranch();
  var env = null;
  // Iterate over the environments to make sure we get a stress environment
  for (var i = 1; i <= branch.Model.Environments.Count; i++) {
    env = branch.Model.Environments.Item(i);
    //if (env.AnalysisType == 2) {
      //break;
    //} else {
      //env = null;
    //}
  }
  return env;
}

function get_stress_answer_set() {
  var env = get_stress_environment();
  if (env != null && env.AnswerSet != null) {
    return env.AnswerSet;
  } else {
    return null;
  }
}

function my_add_result_object(answer_set, result_type, name, csys_id, set_number) {
  // Can't add to a null answer set
  if (answer_set == null) return;

  var result = answer_set.AddResult(SM, result_type);
  if (result != null) {
    if (name != null) {
      result.Name = name;
    }
    if (csys_id != null) {
      result.CoordinateSystemSelection = csys_id;
    }
    if (set_number != null) {
      result.SetNumber = set_number;
    }
    return result.ID;
  }
  return null;
}

function my_delete_result_object(answer_set, result_type, name) {
  var delete_objects = new Array();
  for (var i = 1; i <= answer_set.Children.Count; i++) {
    var obj = answer_set.Children.Item(i);
    if (obj.Class == SC.id_Result) {
      if (obj.ResultType == result_type && obj.Name == name) {
        // Delete out the object so that we pick up any changes
        // that may have occured on the NX side
        delete_objects.push(obj.ID);
        break;
      }
    }
  }
  // Delete them
  for (var i = 0; i < delete_objects.length; i++) {
    DS.Tree.DeleteItem(delete_objects[i]);
  }
}

function test_result_addition() {
  SM.SelectAll();
  var answer_set = get_stress_answer_set();
  // Some component displacements
  //my_add_result_object(answer_set, SC.id_XComponentDisplacement, 'My UX', null, null);
  //my_add_result_object(answer_set, SC.id_YComponentDisplacement, 'My UY', null, null);
  //my_add_result_object(answer_set, SC.id_ZComponentDisplacement, 'My UZ', null, null);
  for (var i = 1; i <= 12; i++) {
    my_add_result_object(answer_set, SC.id_TotalDisplacement, 'usum_'+i, null, i);
  }
  // Some component stresses
  //my_add_result_object(answer_set, SC.id_XComponentStress, 'My SX', null, null);
  //my_add_result_object(answer_set, SC.id_YComponentStress, 'My SY', null, null);
  //my_add_result_object(answer_set, SC.id_ZComponentStress, 'My SZ', null, null);

  // Now, remember to refresh the tree
  SC.refreshTree();
  // Set the 'answer set' as the active item
  SC.changeActiveObject(answer_set.ID);
}

function test_result_deletion() {
  var answer_set = get_stress_answer_set();
  // Delete a couple of stress results
  my_delete_result_object(answer_set, SC.id_XComponentStress, 'My SX');
  my_delete_result_object(answer_set, SC.id_ZComponentStress, 'My SZ');

  // Now, remember to refresh the tree
  SC.refreshTree();
  // Set the 'answer set' as the active item
  SC.changeActiveObject(answer_set.ID);
}

test_result_addition();
// Uncomment this line to test deletion
//test_result_deletion();
//
