require 'test_helper'

class FundraiserTypesControllerTest < ActionController::TestCase
  setup do
    @fundraiser_type = fundraiser_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fundraiser_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fundraiser_type" do
    assert_difference('FundraiserType.count') do
      post :create, fundraiser_type: @fundraiser_type.attributes
    end

    assert_redirected_to fundraiser_type_path(assigns(:fundraiser_type))
  end

  test "should show fundraiser_type" do
    get :show, id: @fundraiser_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fundraiser_type
    assert_response :success
  end

  test "should update fundraiser_type" do
    put :update, id: @fundraiser_type, fundraiser_type: @fundraiser_type.attributes
    assert_redirected_to fundraiser_type_path(assigns(:fundraiser_type))
  end

  test "should destroy fundraiser_type" do
    assert_difference('FundraiserType.count', -1) do
      delete :destroy, id: @fundraiser_type
    end

    assert_redirected_to fundraiser_types_path
  end
end
