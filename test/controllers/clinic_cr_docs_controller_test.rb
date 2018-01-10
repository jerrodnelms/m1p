require 'test_helper'

class ClinicCrDocsControllerTest < ActionController::TestCase
  setup do
    @clinic_cr_doc = clinic_cr_docs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinic_cr_docs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic_cr_doc" do
    assert_difference('ClinicCrDoc.count') do
      post :create, clinic_cr_doc: { clinic_cr_form_id: @clinic_cr_doc.clinic_cr_form_id, clinic_doc_id: @clinic_cr_doc.clinic_doc_id, pcp: @clinic_cr_doc.pcp }
    end

    assert_redirected_to clinic_cr_doc_path(assigns(:clinic_cr_doc))
  end

  test "should show clinic_cr_doc" do
    get :show, id: @clinic_cr_doc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic_cr_doc
    assert_response :success
  end

  test "should update clinic_cr_doc" do
    patch :update, id: @clinic_cr_doc, clinic_cr_doc: { clinic_cr_form_id: @clinic_cr_doc.clinic_cr_form_id, clinic_doc_id: @clinic_cr_doc.clinic_doc_id, pcp: @clinic_cr_doc.pcp }
    assert_redirected_to clinic_cr_doc_path(assigns(:clinic_cr_doc))
  end

  test "should destroy clinic_cr_doc" do
    assert_difference('ClinicCrDoc.count', -1) do
      delete :destroy, id: @clinic_cr_doc
    end

    assert_redirected_to clinic_cr_docs_path
  end
end
