require 'test_helper'

class SurgHospCrDocsControllerTest < ActionController::TestCase
  setup do
    @surg_hosp_cr_doc = surg_hosp_cr_docs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surg_hosp_cr_docs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surg_hosp_cr_doc" do
    assert_difference('SurgHospCrDoc.count') do
      post :create, surg_hosp_cr_doc: { name: @surg_hosp_cr_doc.name, surg_hosp_cr_id: @surg_hosp_cr_doc.surg_hosp_cr_id }
    end

    assert_redirected_to surg_hosp_cr_doc_path(assigns(:surg_hosp_cr_doc))
  end

  test "should show surg_hosp_cr_doc" do
    get :show, id: @surg_hosp_cr_doc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surg_hosp_cr_doc
    assert_response :success
  end

  test "should update surg_hosp_cr_doc" do
    patch :update, id: @surg_hosp_cr_doc, surg_hosp_cr_doc: { name: @surg_hosp_cr_doc.name, surg_hosp_cr_id: @surg_hosp_cr_doc.surg_hosp_cr_id }
    assert_redirected_to surg_hosp_cr_doc_path(assigns(:surg_hosp_cr_doc))
  end

  test "should destroy surg_hosp_cr_doc" do
    assert_difference('SurgHospCrDoc.count', -1) do
      delete :destroy, id: @surg_hosp_cr_doc
    end

    assert_redirected_to surg_hosp_cr_docs_path
  end
end
