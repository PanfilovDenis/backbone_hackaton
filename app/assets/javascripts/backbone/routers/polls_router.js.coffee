class BackboneHackaton.Routers.PollsRouter extends Backbone.Router
  initialize: (options) ->
    @polls = new BackboneHackaton.Collections.PollsCollection()
    @polls.reset options.polls

    @poll_items = new BackboneHackaton.Collections.PollItemsCollection()
    @poll_items.reset options.poll_items


  routes:
    "polls/:id" : "show"
    ""    : "index"

  index: ->
    @view = new BackboneHackaton.Views.Polls.IndexView(polls: @polls)
    $("#polls").html(@view.render().el)

  show: (id) ->
#    poll = @polls.get(id)

#    @view = new BackboneHackaton.Views.Polls.ShowView(model: poll, items: @poll_items)
    @view = new BackboneHackaton.Views.Polls.ShowView(items: @poll_items)
    $("#polls").html(@view.render().el)
