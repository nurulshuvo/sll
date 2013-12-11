require 'test_helper'

class OurGrowthsControllerTest < ActionController::TestCase
  setup do
    @our_growth = our_growths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:our_growths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create our_growth" do
    assert_difference('OurGrowth.count') do
      post :create, our_growth: { body: @our_growth.body, title: @our_growth.title }
    end

    assert_redirected_to our_growth_path(assigns(:our_growth))
  end

  test "should show our_growth" do
    get :show, id: @our_growth
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @our_growth
    assert_response :success
  end

  test "should update our_growth" do
    patch :update, id: @our_growth, our_growth: { body: @our_growth.body, title: @our_growth.title }
    assert_redirected_to our_growth_path(assigns(:our_growth))
  end

  test "should destroy our_growth" do
    assert_difference('OurGrowth.count', -1) do
      delete :destroy, id: @our_growth
    end

    assert_redirected_to our_growths_path
  end
end
