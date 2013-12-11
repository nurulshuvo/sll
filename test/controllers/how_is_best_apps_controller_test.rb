require 'test_helper'

class HowIsBestAppsControllerTest < ActionController::TestCase
  setup do
    @how_is_best_app = how_is_best_apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:how_is_best_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create how_is_best_app" do
    assert_difference('HowIsBestApp.count') do
      post :create, how_is_best_app: { body: @how_is_best_app.body, title: @how_is_best_app.title }
    end

    assert_redirected_to how_is_best_app_path(assigns(:how_is_best_app))
  end

  test "should show how_is_best_app" do
    get :show, id: @how_is_best_app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @how_is_best_app
    assert_response :success
  end

  test "should update how_is_best_app" do
    patch :update, id: @how_is_best_app, how_is_best_app: { body: @how_is_best_app.body, title: @how_is_best_app.title }
    assert_redirected_to how_is_best_app_path(assigns(:how_is_best_app))
  end

  test "should destroy how_is_best_app" do
    assert_difference('HowIsBestApp.count', -1) do
      delete :destroy, id: @how_is_best_app
    end

    assert_redirected_to how_is_best_apps_path
  end
end
