require 'test_helper'

class SurgHospFormConditionsControllerTest < ActionController::TestCase
  setup do
    @surg_hosp_form_condition = surg_hosp_form_conditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surg_hosp_form_conditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surg_hosp_form_condition" do
    assert_difference('SurgHospFormCondition.count') do
      post :create, surg_hosp_form_condition: { name: @surg_hosp_form_condition.name, surg_hosp_form_id: @surg_hosp_form_condition.surg_hosp_form_id }
    end

    assert_redirected_to surg_hosp_form_condition_path(assigns(:surg_hosp_form_condition))
  end

  test "should show surg_hosp_form_condition" do
    get :show, id: @surg_hosp_form_condition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surg_hosp_form_condition
    assert_response :success
  end

  test "should update surg_hosp_form_condition" do
    patch :update, id: @surg_hosp_form_condition, surg_hosp_form_condition: { name: @surg_hosp_form_condition.name, surg_hosp_form_id: @surg_hosp_form_condition.surg_hosp_form_id }
    assert_redirected_to surg_hosp_form_condition_path(assigns(:surg_hosp_form_condition))
  end

  test "should destroy surg_hosp_form_condition" do
    assert_difference('SurgHospFormCondition.count', -1) do
      delete :destroy, id: @surg_hosp_form_condition
    end

    assert_redirected_to surg_hosp_form_conditions_path
  end
end
