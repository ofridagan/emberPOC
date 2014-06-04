App.DashboardController = Ember.ObjectController.extend
  init: ->
    @_super()
    Ember.run.later @, (-> @get('bars').addObject [1,1,1,"999",1]), 5000

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
    bars: @convertBars(@get 'bars')
    corner: "-"
  ).property 'firstRow', 'firstCol', 'bars'

  convertBars: (bars)->bars

