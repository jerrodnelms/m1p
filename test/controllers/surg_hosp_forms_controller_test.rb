require 'test_helper'

class SurgHospFormsControllerTest < ActionController::TestCase
  setup do
    @surg_hosp_form = surg_hosp_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surg_hosp_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surg_hosp_form" do
    assert_difference('SurgHospForm.count') do
      post :create, surg_hosp_form: { name: @surg_hosp_form.name }
    end

    assert_redirected_to surg_hosp_form_path(assigns(:surg_hosp_form))
  end

  test "should show surg_hosp_form" do
    get :show, id: @surg_hosp_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surg_hosp_form
    assert_response :success
  end

  test "should update surg_hosp_form" do
    patch :update, id: @surg_hosp_form, surg_hosp_form: { name: @surg_hosp_form.name }
    assert_redirected_to surg_hosp_form_path(assigns(:surg_hosp_form))
  end

  test "should destroy surg_hosp_form" do
    assert_difference('SurgHospForm.count', -1) do
      delete :destroy, id: @surg_hosp_form
    end

    assert_redirected_to surg_hosp_forms_path
  end
end
