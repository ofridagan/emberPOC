@App.Gantt = DS.Model.extend
  rowsCount: DS.attr()
  colsCount: DS.attr()
  bars: DS.attr()

@App.Gantt.FIXTURES = [
  id: 1
  rowsCount: 30
  colsCount: 10
  bars: [# row(int), col(float), width(float), label(*)
      [3, 0, 2, "104", 0]
      [5, 3, 3, "826", 1]
      [3, 4, 3, "666", 2]
      [8, 5, 1.5, "911", 3]
    ]
]
