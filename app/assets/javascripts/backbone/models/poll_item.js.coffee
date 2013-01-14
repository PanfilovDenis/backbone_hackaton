class BackboneHackaton.Models.PollItem extends Backbone.RelationalModel
  paramRoot: 'poll_item'

  defaults:
    name: null
    votes_count: 0

  vote: ->
    @votes_count += 1
    @save()

class BackboneHackaton.Collections.PollItemsCollection extends Backbone.Collection
  model: BackboneHackaton.Models.PollItem
  url: '/api/poll_items'
