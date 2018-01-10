require 'test_helper'

class AccountPatTypesControllerTest < ActionController::TestCase
  setup do
    @account_pat_type = account_pat_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:account_pat_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account_pat_type" do
    assert_difference('AccountPatType.count') do
      post :create, account_pat_type: { name: @account_pat_type.name, surg_hosp_form_id: @account_pat_type.surg_hosp_form_id }
    end

    assert_redirected_to account_pat_type_path(assigns(:account_pat_type))
  end

  test "should show account_pat_type" do
    get :show, id: @account_pat_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @account_pat_type
    assert_response :success
  end

  test "should update account_pat_type" do
    patch :update, id: @account_pat_type, account_pat_type: { name: @account_pat_type.name, surg_hosp_form_id: @account_pat_type.surg_hosp_form_id }
    assert_redirected_to account_pat_type_path(assigns(:account_pat_type))
  end

  test "should destroy account_pat_type" do
    assert_difference('AccountPatType.count', -1) do
      delete :destroy, id: @account_pat_type
    end

    assert_redirected_to account_pat_types_path
  end
end
