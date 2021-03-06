@App.Gantt = DS.Model.extend
  rowsCount: DS.attr()
  colsCount: DS.attr()
  bars: DS.attr()

@App.Gantt.FIXTURES = [
  id: 1
  rowsCount: 30
  colsCount: 30
  bars: [# row(int), col(float), width(float), label(*)
      [3, 1.5, 2, "104", 0]
      [5, 6, 3, "826", 1]
      [3, 4, 3, "666", 2]
      [8, 10, 5.5, "911", 3]
      [1, 8, 2, "123", 0]
      [2, 7.5, 3, "456", 1]
      [4, 2, 4, "789", 2]
      [6, 8, 3.5, "100", 3]
      [5, 6, 3, "826", 1]
      [3, 4, 3, "666", 2]
      [8, 22, 1.5, "005", 1]
      [12, 24, 2, "321", 0]
      [11, 8.5, 3, "666", 1]
      [10, 6, 1, "789", 2]
      [9, 8, 1.5, "100", 3]
    ]
]
