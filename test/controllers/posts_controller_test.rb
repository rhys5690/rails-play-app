require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  test "index action should be success" do
    get :index
    assert_response :success
  end

  test "new should be success" do
    get :new
    assert_response :success
  end
end
