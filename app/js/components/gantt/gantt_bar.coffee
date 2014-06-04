@App.GanttBarComponent = Ember.Component.extend
  classNames: ['gantt-bar']
  attributeBindings: ['style']

  normalize: (metrics) ->
    width = @get('metrics.width')
    height = @get('metrics.height')
    top: metrics.top / height
    height: metrics.height / height
    left: metrics.left / width
    width: metrics.width / width

  figureMetrics: ->
    metrics = @get('metrics')
    @normalize
      top: @get('bar')[0] * metrics.rowHeight + metrics.offset.top
      left: @get('bar')[1] * metrics.colWidth + metrics.offset.left
      width: @get('bar')[2] * metrics.colWidth
      height: metrics.rowHeight

  toStyle: (m) ->
    _.chain(m).pairs()
      .map((pair) -> "#{pair[0]}: #{pair[1]*100}%;").value()
      .join " "

  style: (->
    return unless @get 'metrics'
    @toStyle @figureMetrics()
  ).property 'metrics'

