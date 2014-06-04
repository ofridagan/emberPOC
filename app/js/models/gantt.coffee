@App.Gantt = DS.Model.extend
  rowsCount: DS.attr()
  colsCount: DS.attr()

@App.Gantt.FIXTURES = [
  id: 1
  rowsCount: 30
  colsCount: 10
]
