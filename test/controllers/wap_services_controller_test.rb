require 'test_helper'

class WapServicesControllerTest < ActionController::TestCase
  setup do
    @wap_service = wap_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wap_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wap_service" do
    assert_difference('WapService.count') do
      post :create, wap_service: { body: @wap_service.body }
    end

    assert_redirected_to wap_service_path(assigns(:wap_service))
  end

  test "should show wap_service" do
    get :show, id: @wap_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wap_service
    assert_response :success
  end

  test "should update wap_service" do
    patch :update, id: @wap_service, wap_service: { body: @wap_service.body }
    assert_redirected_to wap_service_path(assigns(:wap_service))
  end

  test "should destroy wap_service" do
    assert_difference('WapService.count', -1) do
      delete :destroy, id: @wap_service
    end

    assert_redirected_to wap_services_path
  end
end
