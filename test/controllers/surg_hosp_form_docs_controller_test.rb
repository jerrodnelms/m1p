require 'test_helper'

class SurgHospFormDocsControllerTest < ActionController::TestCase
  setup do
    @surg_hosp_form_doc = surg_hosp_form_docs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surg_hosp_form_docs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surg_hosp_form_doc" do
    assert_difference('SurgHospFormDoc.count') do
      post :create, surg_hosp_form_doc: { name: @surg_hosp_form_doc.name, surg_hosp_form_id: @surg_hosp_form_doc.surg_hosp_form_id }
    end

    assert_redirected_to surg_hosp_form_doc_path(assigns(:surg_hosp_form_doc))
  end

  test "should show surg_hosp_form_doc" do
    get :show, id: @surg_hosp_form_doc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surg_hosp_form_doc
    assert_response :success
  end

  test "should update surg_hosp_form_doc" do
    patch :update, id: @surg_hosp_form_doc, surg_hosp_form_doc: { name: @surg_hosp_form_doc.name, surg_hosp_form_id: @surg_hosp_form_doc.surg_hosp_form_id }
    assert_redirected_to surg_hosp_form_doc_path(assigns(:surg_hosp_form_doc))
  end

  test "should destroy surg_hosp_form_doc" do
    assert_difference('SurgHospFormDoc.count', -1) do
      delete :destroy, id: @surg_hosp_form_doc
    end

    assert_redirected_to surg_hosp_form_docs_path
  end
end
