# remove if nothing is added in here
@App.GridRowComponent = Ember.Component.extend
  tagName: 'tr'
  style: (->
    width = @get('columnsOptions.firstColWidth')
    if @get 'columnsOptions.fitToContainer'
      "width: #{(100-width)/@get('cols.length')}%;"
    else
      ""
  ).property 'cols.length',
    'columnsOptions.fitToContainer', 'columnsOptions.firstColWidth'
  firstStyle: (->
    "width: #{@get('columnsOptions.firstColWidth')}%;"
  ).property 'columnsOptions.firstColWidth'

