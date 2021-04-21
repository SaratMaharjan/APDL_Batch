
isGnrl = False

if isGnrl:
    items = [
        'fr1',
        'db1',
        'kn2',
        'vol220',
        'vol100',
        'vol50',
        'vol110',
        'fb1',
        'sb1',
        'rb1',
        'kn1',
        'zp1',
        'db1',
        'nar1',
        'gh2',
        'de2',
        'de3',
        'st5',
        'st1',
        'ge1',
        'gh1',
        'boxes',
        'fg1',
        'bb1',
        'kwb1',
        'kn2',
        'st4',
        'st2',
        'Dummy'
    ]
else:
    items = [
        # 'fs',
        'ms',
        'ssw',
        # 'm1',
        # 'm2',
        # # 'mg11',
        # # 'mg12',
        # # 'mg13',
        # # 'mg14',
        'm3',
        'm4',
        'm5',
        # # # 'm5a',
        # # # 'm5b',
        'm6',
        'm7',
        # 'etkRT',
        # 'others',
        # 'pattern',
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
        'p1',
        'p2',
        'p3',
        'gelenk',
        'front',
        'mid',
        'back',
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
