App.DashboardRoute = Ember.Route.extend
  model: ->
    @store.find 'gantt', 1
