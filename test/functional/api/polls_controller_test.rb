require 'test_helper'

class Api::PollsControllerTest < ActionController::TestCase
  setup do
    @poll = create :poll
    @attrs = attributes_for :poll
    @params = { format: :json }
  end

  test "should get index" do
    get :index, @params
    assert_response :success
  end

  test "should show poll" do
    get :show, @params.merge(id: @poll)
    assert_response :success
  end
end
