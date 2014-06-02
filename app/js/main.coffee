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

App.DashboardController = Ember.ObjectController.extend()

App.GanttSheetComponent = Ember.Component.extend
  tagName: 'table'


Ember.Handlebars.helper 'gantt-td', (value, options) ->
  res = @firstCol() ? '<td class="col-head">O</td>' : "<td>#</td>"
  new Ember.Handlebars.SafeString res
