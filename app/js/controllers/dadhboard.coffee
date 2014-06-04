App.DashboardController = Ember.ObjectController.extend
  init: ->
    @_super()
    Ember.run.later @, (-> @get('bars').addObjects [
      [10,1,1,"001",1]
      [11,2,1,"002",2]
      [12,3,1,"003",3]
      [13,4,1,"004",4]
    ]), 5000
    #Ember.run.later @, (-> @set('colsCount', 16)), 1000
    Ember.run.later @, (-> @set('firstColWidth', 10)), 3000

  buildFirstRow: -> _.map(_.range(1, @get('colsCount')+1), (x)->x*10)
  buildFirstCol: -> _.map(_.range(1, @get('rowsCount')+1), (x)->x*1)

  firstColWidth: 3

  ganttData: (->
    firstRow: @buildFirstRow()
    firstCol: @buildFirstCol()
    firstColWidth: @get 'firstColWidth'
    bars: @convertBars(@get 'bars')
    corner: "-"
  ).property 'colsCount', 'rowsCount', 'bars', 'firstColWidth'

  convertBars: (bars)->bars

