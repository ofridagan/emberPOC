@App.GanttSheetComponent = Ember.Component.extend
  tagName: 'table'
  classNames: [
    'gantt-table'
    'table'
    'striped'
    'table-bordered'
  ]

  metrics:
    rowHeight: 40

  trStyle: (->
    "height: #{@get 'metrics.rowHeight'}px;"
  ).property 'metrics'
