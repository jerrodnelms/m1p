require 'test_helper'

class ClinicDocsControllerTest < ActionController::TestCase
  setup do
    @clinic_doc = clinic_docs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinic_docs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic_doc" do
    assert_difference('ClinicDoc.count') do
      post :create, clinic_doc: { clinic_id: @clinic_doc.clinic_id, name: @clinic_doc.name }
    end

    assert_redirected_to clinic_doc_path(assigns(:clinic_doc))
  end

  test "should show clinic_doc" do
    get :show, id: @clinic_doc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic_doc
    assert_response :success
  end

  test "should update clinic_doc" do
    patch :update, id: @clinic_doc, clinic_doc: { clinic_id: @clinic_doc.clinic_id, name: @clinic_doc.name }
    assert_redirected_to clinic_doc_path(assigns(:clinic_doc))
  end

  test "should destroy clinic_doc" do
    assert_difference('ClinicDoc.count', -1) do
      delete :destroy, id: @clinic_doc
    end

    assert_redirected_to clinic_docs_path
  end
end
