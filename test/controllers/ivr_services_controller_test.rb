require 'test_helper'

class IvrServicesControllerTest < ActionController::TestCase
  setup do
    @ivr_service = ivr_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ivr_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ivr_service" do
    assert_difference('IvrService.count') do
      post :create, ivr_service: { body: @ivr_service.body }
    end

    assert_redirected_to ivr_service_path(assigns(:ivr_service))
  end

  test "should show ivr_service" do
    get :show, id: @ivr_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ivr_service
    assert_response :success
  end

  test "should update ivr_service" do
    patch :update, id: @ivr_service, ivr_service: { body: @ivr_service.body }
    assert_redirected_to ivr_service_path(assigns(:ivr_service))
  end

  test "should destroy ivr_service" do
    assert_difference('IvrService.count', -1) do
      delete :destroy, id: @ivr_service
    end

    assert_redirected_to ivr_services_path
  end
end
