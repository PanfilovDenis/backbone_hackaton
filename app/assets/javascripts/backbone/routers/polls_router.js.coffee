class BackboneHackaton.Routers.PollsRouter extends Backbone.Router
  initialize: (options) ->
    @polls = new BackboneHackaton.Collections.PollsCollection()
    @polls.reset options.polls

  routes:
    "polls/:id" : "show"
    ""          : "index"

  index: ->
    @view = new BackboneHackaton.Views.Polls.IndexView(polls: @polls)
    $("#polls").html(@view.render().el)

  show: (id) ->
    poll = @polls.get(id)
    @view = new BackboneHackaton.Views.Polls.ShowView(model: poll)
    $("#poll").html(@view.render().el)
