
# nsels = ['fs', 'ms', 'ssw', 'm1', 'm2', 'm3', 'm4', 'm5', 'm6', 'm7', 'dw1', 'sw1', 'sp1', 'fl1', 'mz1', 'st1', 'st2', 'st3', 'dsi1',
#          'anl1', 'srt1', 'srt2', 'mrt1', 'etk1', 'etk2', 'etk3', 'etk4', 'fl2', 'fl3', 'strt1', 'zst1', 'gel', 'ring1', 'dsi2', 'anl2']

# nsels = ['fs', 'ms', 'ssw', 'm1', 'm2', 'm3', 'm4', 'm5', 'm6', 'm7', 'mg21', 'mg22',
#          'mg23', 'mg24', 'mrt1', 'srt1', 'ls1', 'fl1']

# nsels = ['fs', 'ms', 'ssw', 'm1', 'm2', 'm3', 'm4', 'm5', 'm6', 'm7', 'mz1', 'dw1',
#          'sw1', 'st1', 'st2', 'srt1', 'srt2', 'mrt1', 'etk', 'm5a', 'm5b', 'ls1', 'ring1']

# nsels = ['main', 'stiff', 'others', 'vol30', 'vol60', 'vol90', 'd160']

# nsels = ['bracket', 'arm4', 'flpl', 'st1', 'outer', 'arm2', 'arm3', 'arm4a',
#          'bolz1', 'brack1', 'brack2', 'arm1', 'mainAR4', 'st2', 'st3', 'addedSols',
#          'vol90', 'vol30', 'vol25', 'vol8', 'd80', 'd100',
#          'vol60', 'vol20', 'vol35', 'vol50', 'vol80']

# nsels = ['armN1', 'incArm1', 'lascheN1',
#          'armN2', 'armN3', 'querShell', 'quer2']

nsels = [
  'vol20',
  'vol30',
  'vol40',
  'vol60',
  'vol85',
  'vol120',
  'vol130',
  'vol160'
]
for item in nsels:
    named_sel = ExtAPI.DataModel.Project.Model.AddNamedSelection()
    # named_sel.SendToSolver = 0
    named_sel.Location = ExtAPI.SelectionManager.CreateSelectionInfo(
        SelectionTypeEnum.WorksheetSpecific)
    named_sel_WS = named_sel.Location
    named_sel.Name = item
    named_sel_WS.AddRow()
    named_sel_WS.SetAction(0, NamedSelectionWorksheetAction.Add)
    named_sel_WS.SetEntityType(0, NamedSelectionWorksheetEntityType.Body)
    # NamedSelection Location_X
    named_sel_WS.SetCriterion(0, NamedSelectionWorksheetCriterion.NameProperty)
    # Largest Smallest Equal NotEqual LessThan GreaterThan Equal
    named_sel_WS.SetOperator(0, NamedSelectionWorksheetOperator.Contains)
    named_sel_WS.SetStringValue(0, item)

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
