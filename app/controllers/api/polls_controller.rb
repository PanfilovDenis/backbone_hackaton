class Api::PollsController < Api::ApplicationController

  def index
    @polls = Poll.all
    respond_with @polls
  end

  def show
    @poll = Poll.find params[:id]
    respond_with @poll
  end
end
