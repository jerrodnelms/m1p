require 'test_helper'

class SurgHospCrConditionsControllerTest < ActionController::TestCase
  setup do
    @surg_hosp_cr_condition = surg_hosp_cr_conditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surg_hosp_cr_conditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surg_hosp_cr_condition" do
    assert_difference('SurgHospCrCondition.count') do
      post :create, surg_hosp_cr_condition: { detail: @surg_hosp_cr_condition.detail, name: @surg_hosp_cr_condition.name, surg_hosp_cr_doc_id: @surg_hosp_cr_condition.surg_hosp_cr_doc_id, type: @surg_hosp_cr_condition.type }
    end

    assert_redirected_to surg_hosp_cr_condition_path(assigns(:surg_hosp_cr_condition))
  end

  test "should show surg_hosp_cr_condition" do
    get :show, id: @surg_hosp_cr_condition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surg_hosp_cr_condition
    assert_response :success
  end

  test "should update surg_hosp_cr_condition" do
    patch :update, id: @surg_hosp_cr_condition, surg_hosp_cr_condition: { detail: @surg_hosp_cr_condition.detail, name: @surg_hosp_cr_condition.name, surg_hosp_cr_doc_id: @surg_hosp_cr_condition.surg_hosp_cr_doc_id, type: @surg_hosp_cr_condition.type }
    assert_redirected_to surg_hosp_cr_condition_path(assigns(:surg_hosp_cr_condition))
  end

  test "should destroy surg_hosp_cr_condition" do
    assert_difference('SurgHospCrCondition.count', -1) do
      delete :destroy, id: @surg_hosp_cr_condition
    end

    assert_redirected_to surg_hosp_cr_conditions_path
  end
end
