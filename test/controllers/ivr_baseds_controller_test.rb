require 'test_helper'

class IvrBasedsControllerTest < ActionController::TestCase
  setup do
    @ivr_based = ivr_baseds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ivr_baseds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ivr_based" do
    assert_difference('IvrBased.count') do
      post :create, ivr_based: { body: @ivr_based.body }
    end

    assert_redirected_to ivr_based_path(assigns(:ivr_based))
  end

  test "should show ivr_based" do
    get :show, id: @ivr_based
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ivr_based
    assert_response :success
  end

  test "should update ivr_based" do
    patch :update, id: @ivr_based, ivr_based: { body: @ivr_based.body }
    assert_redirected_to ivr_based_path(assigns(:ivr_based))
  end

  test "should destroy ivr_based" do
    assert_difference('IvrBased.count', -1) do
      delete :destroy, id: @ivr_based
    end

    assert_redirected_to ivr_baseds_path
  end
end
