require 'test_helper'

class SmsServicesControllerTest < ActionController::TestCase
  setup do
    @sms_service = sms_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sms_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sms_service" do
    assert_difference('SmsService.count') do
      post :create, sms_service: { body: @sms_service.body }
    end

    assert_redirected_to sms_service_path(assigns(:sms_service))
  end

  test "should show sms_service" do
    get :show, id: @sms_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sms_service
    assert_response :success
  end

  test "should update sms_service" do
    patch :update, id: @sms_service, sms_service: { body: @sms_service.body }
    assert_redirected_to sms_service_path(assigns(:sms_service))
  end

  test "should destroy sms_service" do
    assert_difference('SmsService.count', -1) do
      delete :destroy, id: @sms_service
    end

    assert_redirected_to sms_services_path
  end
end
