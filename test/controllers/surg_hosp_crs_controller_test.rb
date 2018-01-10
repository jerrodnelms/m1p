require 'test_helper'

class SurgHospCrsControllerTest < ActionController::TestCase
  setup do
    @surg_hosp_cr = surg_hosp_crs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surg_hosp_crs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surg_hosp_cr" do
    assert_difference('SurgHospCr.count') do
      post :create, surg_hosp_cr: { account_pat_num: @surg_hosp_cr.account_pat_num, account_pat_type_id: @surg_hosp_cr.account_pat_type_id, actual_conditions_tally: @surg_hosp_cr.actual_conditions_tally, admit_date: @surg_hosp_cr.admit_date, any_pertinent_conditions_string: @surg_hosp_cr.any_pertinent_conditions_string, discharg_date: @surg_hosp_cr.discharg_date, dnmc_conditions_tally: @surg_hosp_cr.dnmc_conditions_tally, omitted_conditions_tally: @surg_hosp_cr.omitted_conditions_tally, surg_hosp_form_hospital_id: @surg_hosp_cr.surg_hosp_form_hospital_id, surg_hosp_form_id: @surg_hosp_cr.surg_hosp_form_id }
    end

    assert_redirected_to surg_hosp_cr_path(assigns(:surg_hosp_cr))
  end

  test "should show surg_hosp_cr" do
    get :show, id: @surg_hosp_cr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surg_hosp_cr
    assert_response :success
  end

  test "should update surg_hosp_cr" do
    patch :update, id: @surg_hosp_cr, surg_hosp_cr: { account_pat_num: @surg_hosp_cr.account_pat_num, account_pat_type_id: @surg_hosp_cr.account_pat_type_id, actual_conditions_tally: @surg_hosp_cr.actual_conditions_tally, admit_date: @surg_hosp_cr.admit_date, any_pertinent_conditions_string: @surg_hosp_cr.any_pertinent_conditions_string, discharg_date: @surg_hosp_cr.discharg_date, dnmc_conditions_tally: @surg_hosp_cr.dnmc_conditions_tally, omitted_conditions_tally: @surg_hosp_cr.omitted_conditions_tally, surg_hosp_form_hospital_id: @surg_hosp_cr.surg_hosp_form_hospital_id, surg_hosp_form_id: @surg_hosp_cr.surg_hosp_form_id }
    assert_redirected_to surg_hosp_cr_path(assigns(:surg_hosp_cr))
  end

  test "should destroy surg_hosp_cr" do
    assert_difference('SurgHospCr.count', -1) do
      delete :destroy, id: @surg_hosp_cr
    end

    assert_redirected_to surg_hosp_crs_path
  end
end
