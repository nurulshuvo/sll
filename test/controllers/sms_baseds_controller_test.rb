require 'test_helper'

class SmsBasedsControllerTest < ActionController::TestCase
  setup do
    @sms_based = sms_baseds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sms_baseds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sms_based" do
    assert_difference('SmsBased.count') do
      post :create, sms_based: { body: @sms_based.body }
    end

    assert_redirected_to sms_based_path(assigns(:sms_based))
  end

  test "should show sms_based" do
    get :show, id: @sms_based
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sms_based
    assert_response :success
  end

  test "should update sms_based" do
    patch :update, id: @sms_based, sms_based: { body: @sms_based.body }
    assert_redirected_to sms_based_path(assigns(:sms_based))
  end

  test "should destroy sms_based" do
    assert_difference('SmsBased.count', -1) do
      delete :destroy, id: @sms_based
    end

    assert_redirected_to sms_baseds_path
  end
end
