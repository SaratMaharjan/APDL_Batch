named_sel = ExtAPI.DataModel.Project.Model.AddNamedSelection()
# named_sel.SendToSolver = 0
named_sel.Location = ExtAPI.SelectionManager.CreateSelectionInfo(
    SelectionTypeEnum.WorksheetSpecific)
named_sel_WS = named_sel.Location
named_sel.Name = "test"

named_sel_WS.AddRow()
named_sel_WS.SetAction(0, NamedSelectionWorksheetAction.Add)
named_sel_WS.SetEntityType(0, NamedSelectionWorksheetEntityType.Body)
# NamedSelection Location_X
named_sel_WS.SetCriterion(0, NamedSelectionWorksheetCriterion.Name)
# Largest Smallest Equal NotEqual LessThan GreaterThan Equal
named_sel_WS.SetOperator(0, NamedSelectionWorksheetOperator.Contains)
named_sel_WS.SetValue(0, "mrt")

# named_sel_WS.AddRow()
# named_sel_WS.SetAction(0, NamedSelectionWorksheetAction.Add)
# named_sel_WS.SetEntityType(0, NamedSelectionWorksheetEntityType.Face)
# named_sel_WS.SetCriterion(0, NamedSelectionWorksheetCriterion.Location_Y)# NamedSelection Location_X
# named_sel_WS.SetOperator(0, NamedSelectionWorksheetOperator.GreaterThan)# Largest Smallest Equal NotEqual LessThan GreaterThan Equal
# named_sel_WS.SetValue(0, 0.245)

# named_sel_WS.AddRow()
# named_sel_WS.SetAction(1, NamedSelectionWorksheetAction.Filter)
# named_sel_WS.SetEntityType(1, NamedSelectionWorksheetEntityType.Face)
# named_sel_WS.SetCriterion(1, NamedSelectionWorksheetCriterion.Location_Y)# NamedSelection Location_X
# named_sel_WS.SetOperator(1, NamedSelectionWorksheetOperator.LessThan)# Largest Smallest Equal NotEqual LessThan GreaterThan Equal
# named_sel_WS.SetValue(1, 0.278)

# named_sel_WS.AddRow()
# named_sel_WS.SetAction(2, NamedSelectionWorksheetAction.Filter)
# named_sel_WS.SetEntityType(2, NamedSelectionWorksheetEntityType.Face)
# named_sel_WS.SetCriterion(2, NamedSelectionWorksheetCriterion.Size)
# named_sel_WS.SetOperator(2, NamedSelectionWorksheetOperator.LessThan)
# named_sel_WS.SetValue(2, 0.00290)

# named_sel_WS.AddRow()
# named_sel_WS.SetAction(3, NamedSelectionWorksheetAction.Filter)
# named_sel_WS.SetEntityType(3, NamedSelectionWorksheetEntityType.Face)
# named_sel_WS.SetCriterion(3, NamedSelectionWorksheetCriterion.Size)
# named_sel_WS.SetOperator(3, NamedSelectionWorksheetOperator.GreaterThan)
# named_sel_WS.SetValue(3, 0.00280)
named_sel_WS.Generate()
