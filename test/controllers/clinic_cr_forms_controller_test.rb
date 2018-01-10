require 'test_helper'

class ClinicCrFormsControllerTest < ActionController::TestCase
  setup do
    @clinic_cr_form = clinic_cr_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinic_cr_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic_cr_form" do
    assert_difference('ClinicCrForm.count') do
      post :create, clinic_cr_form: { actual_conditions_tally: @clinic_cr_form.actual_conditions_tally, any_pertinent_conditions: @clinic_cr_form.any_pertinent_conditions, captured_conditions_tally: @clinic_cr_form.captured_conditions_tally, clinic_id: @clinic_cr_form.clinic_id, misdiagnosed_conditions_tally: @clinic_cr_form.misdiagnosed_conditions_tally, mysis_id: @clinic_cr_form.mysis_id }
    end

    assert_redirected_to clinic_cr_form_path(assigns(:clinic_cr_form))
  end

  test "should show clinic_cr_form" do
    get :show, id: @clinic_cr_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic_cr_form
    assert_response :success
  end

  test "should update clinic_cr_form" do
    patch :update, id: @clinic_cr_form, clinic_cr_form: { actual_conditions_tally: @clinic_cr_form.actual_conditions_tally, any_pertinent_conditions: @clinic_cr_form.any_pertinent_conditions, captured_conditions_tally: @clinic_cr_form.captured_conditions_tally, clinic_id: @clinic_cr_form.clinic_id, misdiagnosed_conditions_tally: @clinic_cr_form.misdiagnosed_conditions_tally, mysis_id: @clinic_cr_form.mysis_id }
    assert_redirected_to clinic_cr_form_path(assigns(:clinic_cr_form))
  end

  test "should destroy clinic_cr_form" do
    assert_difference('ClinicCrForm.count', -1) do
      delete :destroy, id: @clinic_cr_form
    end

    assert_redirected_to clinic_cr_forms_path
  end
end
