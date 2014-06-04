App.DashboardController = Ember.ObjectController.extend
  firstRow: (->
    _.map(_.range(1, @get('colsCount')+1), (x)->x*1000)
  ).property 'colsCount'
  firstCol: (->
    _.map(_.range(1, @get('rowsCount')+1), (x)->x*1)
  ).property 'rowsCount'
  ganttData: (->
    firstRow: @get 'firstRow'
    firstCol: @get 'firstCol'
    firstColWidth: 3
    bars: [# row(int), col(float), width(float), label(*)
      [3, 0, 2, "104"]
      [5, 3, 3, "826"]
      [3, 4, 3, "666"]
      [8, 5, 1.5, "911"]
    ]
    corner: "-"
  ).property 'firstRow', 'firstCol'

