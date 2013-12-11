require 'test_helper'

class WapBasedsControllerTest < ActionController::TestCase
  setup do
    @wap_based = wap_baseds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wap_baseds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wap_based" do
    assert_difference('WapBased.count') do
      post :create, wap_based: { body: @wap_based.body }
    end

    assert_redirected_to wap_based_path(assigns(:wap_based))
  end

  test "should show wap_based" do
    get :show, id: @wap_based
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wap_based
    assert_response :success
  end

  test "should update wap_based" do
    patch :update, id: @wap_based, wap_based: { body: @wap_based.body }
    assert_redirected_to wap_based_path(assigns(:wap_based))
  end

  test "should destroy wap_based" do
    assert_difference('WapBased.count', -1) do
      delete :destroy, id: @wap_based
    end

    assert_redirected_to wap_baseds_path
  end
end
