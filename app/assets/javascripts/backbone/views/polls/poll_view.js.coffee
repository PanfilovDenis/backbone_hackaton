BackboneHackaton.Views.Polls ||= {}

class BackboneHackaton.Views.Polls.PollView extends Backbone.View
  template: JST["backbone/templates/polls/poll"]

#  events:
#    "click .destroy" : "destroy"

  tagName: "tr"

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
