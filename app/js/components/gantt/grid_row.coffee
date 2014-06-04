# remove if nothing is added in here
@App.GridRowComponent = Ember.Component.extend
  tagName: 'tr'
  style: (->
    "width: #{(100-@get('firstColWidth'))/@get('cols.length')}%;"
  ).property 'cols', 'firstColWidth'
  firstStyle: (->
    "width: #{@get('firstColWidth')}%;"
  ).property 'firstColWidth'

