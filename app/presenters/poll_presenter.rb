class PollPresenter
  class << self
    def to_json(polls)
      result = polls.map do |poll|
        {
            :id => poll.id,
            :name => poll.name,
            :votes_count => poll.votes_count,
            :items => poll.items.map{ |item| item_json item }
        }
      end
      result.to_json
    end

    def item_json(item)
      {
          :name => item.name,
          :votes_count => item.votes_count,
          :id => item.id
      }
    end
  end
end