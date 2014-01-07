require 'test_helper'

class BilltimesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:billtimes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create billtime" do
    assert_difference('Billtime.count') do
      post :create, :billtime => { }
    end

    assert_redirected_to billtime_path(assigns(:billtime))
  end

  test "should show billtime" do
    get :show, :id => billtimes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => billtimes(:one).to_param
    assert_response :success
  end

  test "should update billtime" do
    put :update, :id => billtimes(:one).to_param, :billtime => { }
    assert_redirected_to billtime_path(assigns(:billtime))
  end

  test "should destroy billtime" do
    assert_difference('Billtime.count', -1) do
      delete :destroy, :id => billtimes(:one).to_param
    end

    assert_redirected_to billtimes_path
  end
end
