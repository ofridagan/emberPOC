@App.GanttBarComponent = Ember.Component.extend
  classNames: ['gantt-bar']
  attributeBindings: ['outterStyle:style']

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

  figureColor: ->
    colors = ["2793db", "bd9208", "db408d"]
    'background-color': colors[@get('bar')[4] % colors.length]

  toStyle: (m, pairToStyle) ->
    _.chain(m).pairs().map(pairToStyle).value().join " "

  outterStyle: (->
    return unless @get 'metrics'
    toMetricStyle = (pair) -> "#{pair[0]}: #{pair[1]*100}%;"
    @toStyle @figureMetrics(), toMetricStyle
  ).property 'metrics', 'bar'

  innerStyle: (->
    return unless @get 'bar'
    toColorStyle = (pair) -> "#{pair[0]}: ##{pair[1]};"
    @toStyle @figureColor(), toColorStyle
  ).property 'bar'
