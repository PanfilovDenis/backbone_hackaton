class Poll::Item < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  belongs_to :poll

  def vote!
    vote
    save
  end

  def vote
    self.votes_count += 1
  end
end
