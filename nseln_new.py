
isGnrl = True

if isGnrl:
    items = [
        'balken',
        'bulkhead',
        'part1',
        'part2',
        'lp;oint',
        'fring',
        'tuer1',
        'tuer2',
        'tuer3',
        'tuer4',
        'welds',
        'stiff1',
        'weld1',
        'weld2',
        'weld3',
        'weld4',
        'weld5',
        'Dummy'
    ]
else:
    items = [
        'fs',
        'ms',
        'ssw',
        'm1',
        'm2',
        # 'stgelenk'
        # # 'mg11',
        # # 'mg12',
        # # 'mg13',
        # # 'mg14',
        'm3',
        'm4',
        'm5',
        'm5a',
        'm5b',
        'm6',
        'm7',
        # 'etkRT',
        # 'others',
        # 'pattern',
        'st1',
        'st2',
        # 'st3',
        'sp1',
        # 'fl1',
        # 'fl2',
        # 'fl3',
        # 'fl4',
        'etk',
        # 'etk1',
        # 'etk2',
        # 'etk3',
        # 'etk4',
        # 'anlen1',
        # 'anlen2',
        # 'anlen3',
        # 'anlen4',
        # # 'dsi1',
        # # 'dsi2',
        'srt1',
        'srt2',
        'mrt1',
        'strt1',
        #     'ls1',
        #      'ring1',
        'gelenk',
        # 'mg21',
        # 'mg22',
        # 'mg23',
        # 'mg24',
        'leisten',
        'lwelds',
        # 'kon1',
        'mz1',
        'dw',
        'sw',
        # 'vb1',
        # 'tb1',
        # 'wall1',
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
