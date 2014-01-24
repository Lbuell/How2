require 'test_helper'

class How2sControllerTest < ActionController::TestCase
  setup do
    @how2 = how2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:how2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create how2" do
    assert_difference('How2.count') do
      post :create, how2: { description: @how2.description, name: @how2.name }
    end

    assert_redirected_to how2_path(assigns(:how2))
  end

  test "should show how2" do
    get :show, id: @how2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @how2
    assert_response :success
  end

  test "should update how2" do
    patch :update, id: @how2, how2: { description: @how2.description, name: @how2.name }
    assert_redirected_to how2_path(assigns(:how2))
  end

  test "should destroy how2" do
    assert_difference('How2.count', -1) do
      delete :destroy, id: @how2
    end

    assert_redirected_to how2s_path
  end
end
