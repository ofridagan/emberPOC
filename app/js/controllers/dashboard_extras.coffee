App.DashboardController.reopen
  init: ->
    @_super()
    Ember.run.later @, (-> @get('bars').addObjects [
      [10,1,1,"001",1]
      [11,2,1,"002",2]
      [12,3,1,"003",3]
      [13,4,1,"004",4]
    ]), 5000
    #Ember.run.later @, (-> @set('colsCount', 56)), 1000
    #Ember.run.later @, (-> @set('columnsOptions',
    #{firstColWidth: 200, fitToContainer: false, colWidth: 50})), 3000
