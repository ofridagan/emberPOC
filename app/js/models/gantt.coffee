@App.Gantt = DS.Model.extend
  rowsCount: DS.attr()

@App.Row = DS.Model.extend
  index: DS.attr()
  cells: DS.hasMany('cell')

@App.Cell = DS.Model.extend
  index: DS.attr()

@App.Gantt.FIXTURES = [
  id: 1
  rowsCount: 12
]

@App.Row.FIXTURES = [
  id: 100
  index: 0
  cells: [200, 201, 202, 203]
,
  id: 101
  index: 1
  cells: [210, 211, 212, 213]
,
  id: 102
  index: 2
  cells: [220, 221, 222, 223]
]

@App.Cell.FIXTURES = [
  id: 200
  index: 0
,
  id: 201
  index: 0
,
  id: 202
  index: 0
,
  id: 203
  index: 0
,
  id: 210
  index: 0
,
  id: 211
  index: 0
,
  id: 212
  index: 0
,
  id: 213
  index: 0
,
  id: 220
  index: 0
,
  id: 221
  index: 0
,
  id: 222
  index: 0
,
  id: 223
  index: 0
]
