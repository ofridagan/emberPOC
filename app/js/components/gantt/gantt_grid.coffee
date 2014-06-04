@App.GanttGridComponent = Ember.Component.extend
  figureGridMetrics: ->
    height = @$().parent('.gantt-sheet').height()
    width = @$().parent('.gantt-sheet').width()
    offset = @$("tbody tr:nth-of-type(1) td:nth-of-type(2)").position()
    offset: offset
    rowHeight: @$("tbody tr").height()
    colWidth: ((width - offset.left) / @get('options.firstRow.length')) - 0
    height: height
    width: width
  didInsertElement: ->
    @set 'metrics', @figureGridMetrics()
