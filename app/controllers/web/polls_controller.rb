class Web::PollsController < ApplicationController
  def show
    @poll = Poll.find(params[:id])
    @polls = Poll.all
    @sample_poll = Poll.sample.first
  end
end
