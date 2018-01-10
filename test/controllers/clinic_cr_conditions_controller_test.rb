require 'test_helper'

class ClinicCrConditionsControllerTest < ActionController::TestCase
  setup do
    @clinic_cr_condition = clinic_cr_conditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinic_cr_conditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic_cr_condition" do
    assert_difference('ClinicCrCondition.count') do
      post :create, clinic_cr_condition: { clinic_condition_id: @clinic_cr_condition.clinic_condition_id, clinic_cr_doc_id: @clinic_cr_condition.clinic_cr_doc_id, detail: @clinic_cr_condition.detail, type: @clinic_cr_condition.type }
    end

    assert_redirected_to clinic_cr_condition_path(assigns(:clinic_cr_condition))
  end

  test "should show clinic_cr_condition" do
    get :show, id: @clinic_cr_condition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic_cr_condition
    assert_response :success
  end

  test "should update clinic_cr_condition" do
    patch :update, id: @clinic_cr_condition, clinic_cr_condition: { clinic_condition_id: @clinic_cr_condition.clinic_condition_id, clinic_cr_doc_id: @clinic_cr_condition.clinic_cr_doc_id, detail: @clinic_cr_condition.detail, type: @clinic_cr_condition.type }
    assert_redirected_to clinic_cr_condition_path(assigns(:clinic_cr_condition))
  end

  test "should destroy clinic_cr_condition" do
    assert_difference('ClinicCrCondition.count', -1) do
      delete :destroy, id: @clinic_cr_condition
    end

    assert_redirected_to clinic_cr_conditions_path
  end
end
