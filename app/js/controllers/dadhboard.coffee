App.DashboardController = Ember.ObjectController.extend
  buildFirstRow: -> _.map(_.range(1, @get('colsCount')+1), (x)->x*10)
  buildFirstCol: -> _.map(_.range(1, @get('rowsCount')+1), (x)->x*1)

  columnsOptions:
    firstColWidth: 5 # percentage
    fitToContainer: true
    ganttWidth: 2000 # in px, ignored if fitToContainer is set to true


  ganttData: (->
    firstRow: @buildFirstRow()
    firstCol: @buildFirstCol()
    columnsOptions: @get 'columnsOptions'
    bars: @convertBars(@get 'bars')
    corner: "-"
  ).property 'colsCount', 'rowsCount', 'bars', 'columnsOptions'

  convertBars: (bars)->bars

