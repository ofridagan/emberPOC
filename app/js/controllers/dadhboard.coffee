App.DashboardController = Ember.ObjectController.extend
  init: ->
    @_super()
    Ember.run.later @, (-> @get('bars').addObjects [
      [10,1,1,"001",1]
      [11,2,1,"002",2]
      [12,3,1,"003",3]
      [13,4,1,"004",4]
    ]), 5000
    #Ember.run.later @, (-> @set('colsCount', 15)), 1000

  firstRow: (->
    _.map(_.range(1, @get('colsCount')+1), (x)->x*10)
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

