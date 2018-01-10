require 'test_helper'

class SurgHospFormHospitalsControllerTest < ActionController::TestCase
  setup do
    @surg_hosp_form_hospital = surg_hosp_form_hospitals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surg_hosp_form_hospitals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surg_hosp_form_hospital" do
    assert_difference('SurgHospFormHospital.count') do
      post :create, surg_hosp_form_hospital: { name: @surg_hosp_form_hospital.name, surg_hosp_form_id: @surg_hosp_form_hospital.surg_hosp_form_id }
    end

    assert_redirected_to surg_hosp_form_hospital_path(assigns(:surg_hosp_form_hospital))
  end

  test "should show surg_hosp_form_hospital" do
    get :show, id: @surg_hosp_form_hospital
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surg_hosp_form_hospital
    assert_response :success
  end

  test "should update surg_hosp_form_hospital" do
    patch :update, id: @surg_hosp_form_hospital, surg_hosp_form_hospital: { name: @surg_hosp_form_hospital.name, surg_hosp_form_id: @surg_hosp_form_hospital.surg_hosp_form_id }
    assert_redirected_to surg_hosp_form_hospital_path(assigns(:surg_hosp_form_hospital))
  end

  test "should destroy surg_hosp_form_hospital" do
    assert_difference('SurgHospFormHospital.count', -1) do
      delete :destroy, id: @surg_hosp_form_hospital
    end

    assert_redirected_to surg_hosp_form_hospitals_path
  end
end
