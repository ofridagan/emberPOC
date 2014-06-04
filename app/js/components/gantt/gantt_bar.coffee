@App.GanttBarComponent = Ember.Component.extend
  classNames: ['gantt-bar']
  attributeBindings: ['style']
  figureMetrics: ->
    left: (@get('bar')[1] * @get('metrics.colWidth') + @get('metrics.offset.left')) / @get('metrics.width')
    top: (@get('bar')[0] * @get('metrics.rowHeight') + @get('metrics.offset.top')) / @get('metrics.height')
    width: (@get('bar')[2] * @get('metrics.colWidth')) / @get('metrics.width')
    height: @get('metrics.rowHeight') / @get('metrics.height')

  toStyle: (m) ->
    "top: #{m.top*100}%; left: #{m.left*100}%; width: #{m.width*100}%; height: #{m.height*100}%"

  style: (->
    return unless @get 'metrics'
    @toStyle @figureMetrics()
  ).property 'metrics'

