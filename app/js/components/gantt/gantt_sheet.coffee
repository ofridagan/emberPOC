@App.GanttSheetComponent = Ember.Component.extend
  classNames: ["gantt-sheet"]
  figureGridMetrics: ->
    height = @$().height()
    width = @$().width()
    offset = @$("tbody tr:nth-of-type(1) td:nth-of-type(2)").position()
    offset: offset
    rowHeight: @$("tbody tr").height()
    colWidth: ((width - offset.left) / @get('options.firstRow.length'))
    height: height
    width: width
  setMetrics: ->
    @set 'metrics', @figureGridMetrics()
  didInsertElement: ->
    @setMetrics()
    @$('table').tableHover({colClass: 'highlight', ignoreCols: [1]})
  updateMetrics: (->
    @setMetrics()
  ).observes 'options'
