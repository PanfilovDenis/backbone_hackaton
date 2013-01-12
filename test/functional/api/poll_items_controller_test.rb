require 'test_helper'

class Api::PollItemsControllerTest < ActionController::TestCase
  setup do
    @poll_item = create :poll_item
    @attrs = attributes_for :poll_item
    @params = { format: :json }
  end
  
  test "should update poll_item" do
    put :update, @params.merge(id: @poll_item, poll_item: @attrs)
    assert_response :success
  end
end
