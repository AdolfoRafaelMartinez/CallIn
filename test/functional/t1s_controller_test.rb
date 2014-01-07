require 'test_helper'

class T1sControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:t1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create t1" do
    assert_difference('T1.count') do
      post :create, :t1 => { }
    end

    assert_redirected_to t1_path(assigns(:t1))
  end

  test "should show t1" do
    get :show, :id => t1s(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => t1s(:one).to_param
    assert_response :success
  end

  test "should update t1" do
    put :update, :id => t1s(:one).to_param, :t1 => { }
    assert_redirected_to t1_path(assigns(:t1))
  end

  test "should destroy t1" do
    assert_difference('T1.count', -1) do
      delete :destroy, :id => t1s(:one).to_param
    end

    assert_redirected_to t1s_path
  end
end
