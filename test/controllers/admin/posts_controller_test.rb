require 'test_helper'

class Admin::PostsControllerTest < ActionController::TestCase
  test "allow our admin user" do
    user = users(:admin_user)
    @request.session[:user_id] = user.id

    get :index
    assert_response :success
  end

  test "don't allow our admin user" do
    user = users(:regular_user)
    @request.session[:user_id] = user.id

    get :index
    assert_response :redirect
  end
end
