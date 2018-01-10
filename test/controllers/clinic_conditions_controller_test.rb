require 'test_helper'

class ClinicConditionsControllerTest < ActionController::TestCase
  setup do
    @clinic_condition = clinic_conditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinic_conditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic_condition" do
    assert_difference('ClinicCondition.count') do
      post :create, clinic_condition: { clinic_id: @clinic_condition.clinic_id, name: @clinic_condition.name }
    end

    assert_redirected_to clinic_condition_path(assigns(:clinic_condition))
  end

  test "should show clinic_condition" do
    get :show, id: @clinic_condition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic_condition
    assert_response :success
  end

  test "should update clinic_condition" do
    patch :update, id: @clinic_condition, clinic_condition: { clinic_id: @clinic_condition.clinic_id, name: @clinic_condition.name }
    assert_redirected_to clinic_condition_path(assigns(:clinic_condition))
  end

  test "should destroy clinic_condition" do
    assert_difference('ClinicCondition.count', -1) do
      delete :destroy, id: @clinic_condition
    end

    assert_redirected_to clinic_conditions_path
  end
end
