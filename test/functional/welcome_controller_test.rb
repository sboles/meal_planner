require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase

  def setup
    login_as_someone
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
