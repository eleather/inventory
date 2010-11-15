require 'test_helper'

class StockUsesControllerTest < ActionController::TestCase
  setup do
    @stock_use = stock_uses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stock_uses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stock_use" do
    assert_difference('StockUse.count') do
      post :create, :stock_use => @stock_use.attributes
    end

    assert_redirected_to stock_use_path(assigns(:stock_use))
  end

  test "should show stock_use" do
    get :show, :id => @stock_use.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @stock_use.to_param
    assert_response :success
  end

  test "should update stock_use" do
    put :update, :id => @stock_use.to_param, :stock_use => @stock_use.attributes
    assert_redirected_to stock_use_path(assigns(:stock_use))
  end

  test "should destroy stock_use" do
    assert_difference('StockUse.count', -1) do
      delete :destroy, :id => @stock_use.to_param
    end

    assert_redirected_to stock_uses_path
  end
end
