require 'test_helper'

class GetConnectedAndLetKnowsControllerTest < ActionController::TestCase
  setup do
    @get_connected_and_let_know = get_connected_and_let_knows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:get_connected_and_let_knows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create get_connected_and_let_know" do
    assert_difference('GetConnectedAndLetKnow.count') do
      post :create, get_connected_and_let_know: { body: @get_connected_and_let_know.body, title: @get_connected_and_let_know.title }
    end

    assert_redirected_to get_connected_and_let_know_path(assigns(:get_connected_and_let_know))
  end

  test "should show get_connected_and_let_know" do
    get :show, id: @get_connected_and_let_know
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @get_connected_and_let_know
    assert_response :success
  end

  test "should update get_connected_and_let_know" do
    patch :update, id: @get_connected_and_let_know, get_connected_and_let_know: { body: @get_connected_and_let_know.body, title: @get_connected_and_let_know.title }
    assert_redirected_to get_connected_and_let_know_path(assigns(:get_connected_and_let_know))
  end

  test "should destroy get_connected_and_let_know" do
    assert_difference('GetConnectedAndLetKnow.count', -1) do
      delete :destroy, id: @get_connected_and_let_know
    end

    assert_redirected_to get_connected_and_let_knows_path
  end
end
