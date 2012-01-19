require 'test_helper'

class TiniesControllerTest < ActionController::TestCase
  setup do
    @tiny = tinies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tinies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tiny" do
    assert_difference('Tiny.count') do
      post :create, tiny: @tiny.attributes
    end

    assert_redirected_to tiny_path(assigns(:tiny))
  end

  test "should show tiny" do
    get :show, id: @tiny.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tiny.to_param
    assert_response :success
  end

  test "should update tiny" do
    put :update, id: @tiny.to_param, tiny: @tiny.attributes
    assert_redirected_to tiny_path(assigns(:tiny))
  end

  test "should destroy tiny" do
    assert_difference('Tiny.count', -1) do
      delete :destroy, id: @tiny.to_param
    end

    assert_redirected_to tinies_path
  end
end
