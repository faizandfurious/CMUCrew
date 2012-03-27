require 'test_helper'

class UserFundraisersControllerTest < ActionController::TestCase
  setup do
    @user_fundraiser = user_fundraisers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_fundraisers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_fundraiser" do
    assert_difference('UserFundraiser.count') do
      post :create, user_fundraiser: @user_fundraiser.attributes
    end

    assert_redirected_to user_fundraiser_path(assigns(:user_fundraiser))
  end

  test "should show user_fundraiser" do
    get :show, id: @user_fundraiser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_fundraiser
    assert_response :success
  end

  test "should update user_fundraiser" do
    put :update, id: @user_fundraiser, user_fundraiser: @user_fundraiser.attributes
    assert_redirected_to user_fundraiser_path(assigns(:user_fundraiser))
  end

  test "should destroy user_fundraiser" do
    assert_difference('UserFundraiser.count', -1) do
      delete :destroy, id: @user_fundraiser
    end

    assert_redirected_to user_fundraisers_path
  end
end
