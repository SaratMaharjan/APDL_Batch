
isGnrl = False

if isGnrl:
    items = [
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
    items = [
        'fs',
        'ms',
        'ssw',
        'm1',
        'm2',
        # 'mg11',
        # 'mg12',
        # 'mg13',
        # 'mg14',
        'm3',
        'm4',
        'm5',
        # # 'm5a',
        # # 'm5b',
        'm6',
        'm7',
        'mz1',
        'dw1',
        'sw1',
        'st1',
        'st2',
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
        'srt1',
        'srt2',
        'mrt1',
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


sel = Model.AddNamedSelection()
sel.ScopingMethod = GeometryDefineByType.Worksheet
sel.Name = 'model'
pipews = sel.GenerationCriteria
pipews.Add(None)
pipews[0].EntityType = SelectionType.GeoBody
pipews[0].Criterion = SelectionCriterionType.Type
pipews[0].Operator = SelectionOperatorType.Equal
pipews.Add(None)
pipews[1].EntityType = SelectionType.GeoBody
pipews[1].Criterion = SelectionCriterionType.Type
pipews[1].Operator = SelectionOperatorType.Equal

sel = Model.AddNamedSelection()
sel.ScopingMethod = GeometryDefineByType.Worksheet
sel.Name = 'sols'
pipews = sel.GenerationCriteria
pipews.Add(None)
pipews[0].EntityType = SelectionType.GeoBody
pipews[0].Criterion = SelectionCriterionType.Type
pipews[0].Operator = SelectionOperatorType.Equal

sel = Model.AddNamedSelection()
sel.ScopingMethod = GeometryDefineByType.Worksheet
sel.Name = 'shls'
pipews = sel.GenerationCriteria
pipews.Add(None)
pipews[0].EntityType = SelectionType.GeoBody
pipews[0].Criterion = SelectionCriterionType.Type
pipews[0].Operator = SelectionOperatorType.Equal


for item in items:
    sel = Model.AddNamedSelection()
    sel.ScopingMethod = GeometryDefineByType.Worksheet
    sel.Name = item
    pipews = sel.GenerationCriteria
    pipews.Add(None)
    pipews[0].EntityType = SelectionType.GeoBody
    pipews[0].Criterion = SelectionCriterionType.Name
    pipews[0].Operator = SelectionOperatorType.Contains
    pipews[0].Value = item
    sel.Generate()
