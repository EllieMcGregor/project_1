require 'test_helper'

class InstructsControllerTest < ActionController::TestCase
  setup do
    @instruct = instructs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instructs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instruct" do
    assert_difference('Instruct.count') do
      post :create, instruct: { course_id: @instruct.course_id, level: @instruct.level, user_id: @instruct.user_id }
    end

    assert_redirected_to instruct_path(assigns(:instruct))
  end

  test "should show instruct" do
    get :show, id: @instruct
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instruct
    assert_response :success
  end

  test "should update instruct" do
    patch :update, id: @instruct, instruct: { course_id: @instruct.course_id, level: @instruct.level, user_id: @instruct.user_id }
    assert_redirected_to instruct_path(assigns(:instruct))
  end

  test "should destroy instruct" do
    assert_difference('Instruct.count', -1) do
      delete :destroy, id: @instruct
    end

    assert_redirected_to instructs_path
  end
end
