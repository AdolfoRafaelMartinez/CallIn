require 'test_helper'

class XactionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:xactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create xaction" do
    assert_difference('Xaction.count') do
      post :create, :xaction => { }
    end

    assert_redirected_to xaction_path(assigns(:xaction))
  end

  test "should show xaction" do
    get :show, :id => xactions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => xactions(:one).to_param
    assert_response :success
  end

  test "should update xaction" do
    put :update, :id => xactions(:one).to_param, :xaction => { }
    assert_redirected_to xaction_path(assigns(:xaction))
  end

  test "should destroy xaction" do
    assert_difference('Xaction.count', -1) do
      delete :destroy, :id => xactions(:one).to_param
    end

    assert_redirected_to xactions_path
  end
end
