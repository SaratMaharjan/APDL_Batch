
# named_sel = ExtAPI.DataModel.Project.Model.AddNamedSelection()
# # named_sel.SendToSolver = 0
# named_sel.Location = ExtAPI.SelectionManager.CreateSelectionInfo(
#     SelectionTypeEnum.WorksheetSpecific)
# named_sel_WS = named_sel.Location
# named_sel.Name = 'model'
# # named_sel_WS.AddRow()
# # named_sel_WS.SetAction(0, NamedSelectionWorksheetAction.Add)
# # named_sel_WS.SetEntityType(0, NamedSelectionWorksheetEntityType.Body)
# # # NamedSelection Location_X
# # named_sel_WS.SetCriterion(0, NamedSelectionWorksheetCriterion.Type)
# # # Largest Smallest Equal NotEqual LessThan GreaterThan Equal
# # named_sel_WS.SetOperator(0, NamedSelectionWorksheetOperator.Equal)
# # # named_sel_WS.SetValue(0, 1)
# # named_sel_WS.AddRow()
# # named_sel_WS.SetAction(1, NamedSelectionWorksheetAction.Add)
# # named_sel_WS.SetEntityType(1, NamedSelectionWorksheetEntityType.Body)
# # # NamedSelection Location_X
# # named_sel_WS.SetCriterion(1, NamedSelectionWorksheetCriterion.Type)
# # # Largest Smallest Equal NotEqual LessThan GreaterThan Equal
# # named_sel_WS.SetOperator(1, NamedSelectionWorksheetOperator.Equal)
# # # named_sel_WS.SetValue(0, 1)
# # # named_sel_WS.Generate()

# named_sel = ExtAPI.DataModel.Project.Model.AddNamedSelection()
# # named_sel.SendToSolver = 0
# named_sel.Location = ExtAPI.SelectionManager.CreateSelectionInfo(
#     SelectionTypeEnum.WorksheetSpecific)
# named_sel_WS = named_sel.Location
# named_sel.Name = 'shls'
# # named_sel_WS.AddRow()
# # named_sel_WS.SetAction(0, NamedSelectionWorksheetAction.Add)
# # named_sel_WS.SetEntityType(0, NamedSelectionWorksheetEntityType.Body)
# # # NamedSelection Location_X
# # named_sel_WS.SetCriterion(0, NamedSelectionWorksheetCriterion.Type)
# # # Largest Smallest Equal NotEqual LessThan GreaterThan Equal
# # named_sel_WS.SetOperator(0, NamedSelectionWorksheetOperator.Equal)
# # # named_sel_WS.SetValue(0, 1)
# # # named_sel_WS.Generate()

# named_sel = ExtAPI.DataModel.Project.Model.AddNamedSelection()
# # named_sel.SendToSolver = 0
# named_sel.Location = ExtAPI.SelectionManager.CreateSelectionInfo(
#     SelectionTypeEnum.WorksheetSpecific)
# named_sel_WS = named_sel.Location
# named_sel.Name = 'sols'
# # named_sel_WS.AddRow()
# # named_sel_WS.SetAction(0, NamedSelectionWorksheetAction.Add)
# # named_sel_WS.SetEntityType(0, NamedSelectionWorksheetEntityType.Body)
# # # NamedSelection Location_X
# # named_sel_WS.SetCriterion(0, NamedSelectionWorksheetCriterion.Type)
# # # Largest Smallest Equal NotEqual LessThan GreaterThan Equal
# # named_sel_WS.SetOperator(0, NamedSelectionWorksheetOperator.Equal)
# # # named_sel_WS.SetValue(0, 1)
# # # named_sel_WS.Generate()

# named_sel = ExtAPI.DataModel.Project.Model.AddNamedSelection()
# # named_sel.SendToSolver = 0
# named_sel.Location = ExtAPI.SelectionManager.CreateSelectionInfo(
#     SelectionTypeEnum.WorksheetSpecific)
# named_sel_WS = named_sel.Location
# named_sel.Name = 'symmFace'
# # named_sel_WS.AddRow()
# # named_sel_WS.SetAction(0, NamedSelectionWorksheetAction.Add)
# # named_sel_WS.SetEntityType(0, NamedSelectionWorksheetEntityType.Face)
# # named_sel_WS.SetCriterion(0, NamedSelectionWorksheetCriterion.Location_X)
# # named_sel_WS.SetOperator(0, NamedSelectionWorksheetOperator.Equal)
# # named_sel_WS.SetValue(0, 0.00)
# # named_sel_WS.Generate()

# named_sel = ExtAPI.DataModel.Project.Model.AddNamedSelection()
# # named_sel.SendToSolver = 0
# named_sel.Location = ExtAPI.SelectionManager.CreateSelectionInfo(
#     SelectionTypeEnum.WorksheetSpecific)
# named_sel_WS = named_sel.Location
# named_sel.Name = 'symmEdge'
# # named_sel_WS.AddRow()
# # named_sel_WS.SetAction(0, NamedSelectionWorksheetAction.Add)
# # named_sel_WS.SetEntityType(0, NamedSelectionWorksheetEntityType.Edge)
# # named_sel_WS.SetCriterion(0, NamedSelectionWorksheetCriterion.Location_X)
# # named_sel_WS.SetOperator(0, NamedSelectionWorksheetOperator.Equal)
# # named_sel_WS.SetValue(0, 0.00)
# # named_sel_WS.Generate()

# # named_sel = ExtAPI.DataModel.Project.Model.AddNamedSelection()
# # # named_sel.SendToSolver = 0
# # named_sel.Location = ExtAPI.SelectionManager.CreateSelectionInfo(
# #     SelectionTypeEnum.WorksheetSpecific)
# # named_sel_WS = named_sel.Location
# # named_sel.Name = 'sols'
# # named_sel_WS.AddRow()
# # named_sel_WS.SetAction(1, NamedSelectionWorksheetAction.Filter)
# # named_sel_WS.SetEntityType(1, NamedSelectionWorksheetEntityType.Face)
# # # NamedSelection Location_X
# # named_sel_WS.SetCriterion(1, NamedSelectionWorksheetCriterion.Location_Y)
# # # Largest Smallest Equal NotEqual LessThan GreaterThan Equal
# # named_sel_WS.SetOperator(1, NamedSelectionWorksheetOperator.LessThan)
# # named_sel_WS.SetValue(1, 0.278)
# # named_sel_WS.Generate()

# # named_sel = ExtAPI.DataModel.Project.Model.AddNamedSelection()
# # # named_sel.SendToSolver = 0
# # named_sel.Location = ExtAPI.SelectionManager.CreateSelectionInfo(
# #     SelectionTypeEnum.WorksheetSpecific)
# # named_sel_WS = named_sel.Location
# # named_sel.Name = 'sols'
# # named_sel_WS.AddRow()
# # named_sel_WS.SetAction(2, NamedSelectionWorksheetAction.Filter)
# # named_sel_WS.SetEntityType(2, NamedSelectionWorksheetEntityType.Face)
# # named_sel_WS.SetCriterion(2, NamedSelectionWorksheetCriterion.Size)
# # named_sel_WS.SetOperator(2, NamedSelectionWorksheetOperator.LessThan)
# # named_sel_WS.SetValue(2, 0.00290)
# # named_sel_WS.Generate()

# # named_sel = ExtAPI.DataModel.Project.Model.AddNamedSelection()
# # # named_sel.SendToSolver = 0
# # named_sel.Location = ExtAPI.SelectionManager.CreateSelectionInfo(
# #     SelectionTypeEnum.WorksheetSpecific)
# # named_sel_WS = named_sel.Location
# # named_sel.Name = 'sols'
# # named_sel_WS.AddRow()
# # named_sel_WS.SetAction(3, NamedSelectionWorksheetAction.Filter)
# # named_sel_WS.SetEntityType(3, NamedSelectionWorksheetEntityType.Face)
# # named_sel_WS.SetCriterion(3, NamedSelectionWorksheetCriterion.Size)
# # named_sel_WS.SetOperator(3, NamedSelectionWorksheetOperator.GreaterThan)
# # named_sel_WS.SetValue(3, 0.00280)
# # named_sel_WS.Generate()

isGnrl = False

if isGnrl:
    nsels = [
        'main',
        'beam',
        'stiff',
        'nlconsoles',
        'beamin',
        'xplus',
        'xminus',
        'stin',
        'fl1',
        'fl2',
        'vol120',
        'vol50',
        'vol30',
        'tr1',
        'tr2',
        'vol40',
        'vol90',
        'vol80',
        'vol60',
        'up',
        'down',
        'vol105',

        # 'vol25',
        # 'vol30',
        # 'vol40',
        # 'vol50',
        # 'd40',
        # 'd50',
        # 'd90',
        'Dummy'
    ]
else:
    nsels = [
        'fs',
        # 'ms',
        # 'ssw',
        # 'm1',
        # 'm2',
        # 'mg11',
        # 'mg12',
        # 'mg13',
        # 'mg14',
        # 'm3',
        # 'm4',
        # 'm5',
        # # 'm5a',
        # # 'm5b',
        # 'm6',
        # 'm7',
        # # 'mz1',
        # 'dw1',
        # 'sw1',
        # 'st1',
        # 'st2',
        # #    'sp1',
        # #    'fl1',
        # #    'fl2',
        # #    'fl3',
        # # 'etk',
        # # 'etk1',
        # # 'etk2',
        # # 'etk3',
        # # 'etk4',
        # # 'anl1',
        # # 'anl2',
        # # 'dsi1',
        # # 'dsi2',
        # 'srt1',
        # 'srt2',
        # 'mrt1',
        # 'strt1',
        #     'ls1',
        #      'ring1',
        #      'sp1',
        # 'mg21',
        # 'mg22',
        # 'mg23',
        # 'mg24',
        # 'leisten',
        # 'welds',
        'Dummy'
    ]

# for item in range(1, 17):
for item in nsels:
    # item = 'p' + str(item)
    named_sel = ExtAPI.DataModel.Project.Model.AddNamedSelection()
    named_sel.Name = item
    # named_sel.SendToSolver = 0
    named_sel.Location = ExtAPI.SelectionManager.CreateSelectionInfo(
        SelectionTypeEnum.WorksheetSpecific)
    named_sel_WS = named_sel.Location
    named_sel_WS.AddRow()
    # named_sel_WS.SetAction(0, NamedSelectionWorksheetAction.Add)
    named_sel_WS.SetEntityType(0, NamedSelectionWorksheetEntityType.Body)
    # NamedSelection Location_X
    named_sel_WS.SetCriterion(0, NamedSelectionWorksheetCriterion.NameProperty)
    # Largest Smallest Equal NotEqual LessThan GreaterThan Equal
    named_sel_WS.SetOperator(0, NamedSelectionWorksheetOperator.Contains)
    named_sel_WS.SetStringValue(0, item)
    named_sel_WS.Generate()
