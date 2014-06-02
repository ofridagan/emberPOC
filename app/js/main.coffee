@App = Ember.Application.create()
App = @App

App.ApplicationAdapter = DS.FixtureAdapter.extend()

App.Router.map ->
  @route "dashboard"

App.IndexRoute = Ember.Route.extend
  beforeModel: ->
    @transitionTo 'dashboard'

App.DashboardRoute = Ember.Route.extend
  model: ->
    @store.find 'gantt', 1
  afterModel: (m)->
    Ember.run.later @, (-> m.set('colsCount', 3)), 1000

App.DashboardController = Ember.ObjectController.extend
  header: (-> _.map(_.range(1, @get('colsCount')+1), (x)->x*1000)).property 'colsCount'
  headerCol: (-> _.map(_.range(1, @get('rowsCount')+1), (x)->x*1)).property 'rowsCount'

