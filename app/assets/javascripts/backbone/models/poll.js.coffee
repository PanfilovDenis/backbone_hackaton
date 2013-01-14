class BackboneHackaton.Models.Poll extends Backbone.RelationalModel
  paramRoot: 'poll'

  defaults:
    name: null

  relations: [
    type: Backbone.HasMany
    key: 'items'
    relatedModel: 'BackboneHackaton.Models.PollItem'
    collectionType: 'BackboneHackaton.Collections.PollItemsCollection'
    reverseRelation:
      key: 'poll'
  ]

class BackboneHackaton.Collections.PollsCollection extends Backbone.Collection
  model: BackboneHackaton.Models.Poll
  url: '/api/polls'
