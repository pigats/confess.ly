require 'test_helper'

class ConfessionsControllerTest < ActionController::TestCase
  setup do
    @confession = confessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:confessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create confession" do
    assert_difference('Confession.count') do
      post :create, confession: @confession.attributes
    end

    assert_redirected_to confession_path(assigns(:confession))
  end

  test "should show confession" do
    get :show, id: @confession.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @confession.to_param
    assert_response :success
  end

  test "should update confession" do
    put :update, id: @confession.to_param, confession: @confession.attributes
    assert_redirected_to confession_path(assigns(:confession))
  end

  test "should destroy confession" do
    assert_difference('Confession.count', -1) do
      delete :destroy, id: @confession.to_param
    end

    assert_redirected_to confessions_path
  end
end
