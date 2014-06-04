@App.GanttSheetComponent = Ember.Component.extend
  classNames: ["gantt-sheet"]
  figureGridMetrics: ->
    height = @$().height()
    width = @$().width()
    offset = @$("tbody tr:nth-of-type(1) td:nth-of-type(2)").position()
    console.log "offffff    " + offset.left
    offset: offset
    rowHeight: @$("tbody tr").height()
    colWidth: ((width - offset.left) / @get('options.firstRow.length'))
    height: height
    width: width
  setMetrics: ->
    @set 'metrics', @figureGridMetrics()
    @$('table').tableHover({colClass: 'highlight', ignoreCols: [1]})
  didInsertElement: ->
    @setMetrics()
  updateMetrics: (->
    # needed to let the grid update before we calculate offset
    Ember.run.later @, @setMetrics, 0
  ).observes 'options'
