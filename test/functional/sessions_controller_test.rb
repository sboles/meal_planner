require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "bad login " do
    post :create, email:"dummy", password:"dummy"
    assert_response :success
  end

  test "good login " do
    User.any_instance.stubs(:authenticate).returns users(:one)
    post :create, email:"one@meals.com", password:"dummy"
    assert_redirected_to root_path
  end

  test "logout" do
    delete :destroy
    assert_redirected_to root_path
  end
end
