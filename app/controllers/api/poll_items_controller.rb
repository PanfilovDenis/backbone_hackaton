class Api::PollItemsController < Api::ApplicationController
  def update
    @item = Poll::Item.find params[:id]
    @item.update_attributes resource_params
    respond_with @item
  end

private
  def resource_params
    params[:poll_item].permit(:name, :votes_count)
  end
end
