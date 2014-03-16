require 'test_helper'

class QuestionsUsersControllerTest < ActionController::TestCase
  setup do
    @questions_user = questions_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questions_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create questions_user" do
    assert_difference('QuestionsUser.count') do
      post :create, questions_user: { belongs_to: @questions_user.belongs_to, belongs_to: @questions_user.belongs_to }
    end

    assert_redirected_to questions_user_path(assigns(:questions_user))
  end

  test "should show questions_user" do
    get :show, id: @questions_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @questions_user
    assert_response :success
  end

  test "should update questions_user" do
    patch :update, id: @questions_user, questions_user: { belongs_to: @questions_user.belongs_to, belongs_to: @questions_user.belongs_to }
    assert_redirected_to questions_user_path(assigns(:questions_user))
  end

  test "should destroy questions_user" do
    assert_difference('QuestionsUser.count', -1) do
      delete :destroy, id: @questions_user
    end

    assert_redirected_to questions_users_path
  end
end
