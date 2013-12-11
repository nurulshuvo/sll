require 'test_helper'

class AdminPannelControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get services" do
    get :services
    assert_response :success
  end

  test "should get android_app" do
    get :android_app
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get our_partners" do
    get :our_partners
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
