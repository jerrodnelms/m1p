class SurgHospFormDocsController < ApplicationController
  before_action :set_surg_hosp_form_doc, only: [:show, :edit, :update, :destroy]

  # GET /surg_hosp_form_docs
  def index
    @surg_hosp_form_docs = SurgHospFormDoc.all
  end

  # GET /surg_hosp_form_docs/1
  def show
  end

  # GET /surg_hosp_form_docs/new
  def new
    @surg_hosp_form_doc = SurgHospFormDoc.new
  end

  # GET /surg_hosp_form_docs/1/edit
  def edit
  end

  # POST /surg_hosp_form_docs
  def create
    @surg_hosp_form_doc = SurgHospFormDoc.new(surg_hosp_form_doc_params)

    if @surg_hosp_form_doc.save
      redirect_to @surg_hosp_form_doc, notice: 'Surg hosp form doc was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /surg_hosp_form_docs/1
  def update
    if @surg_hosp_form_doc.update(surg_hosp_form_doc_params)
      redirect_to @surg_hosp_form_doc, notice: 'Surg hosp form doc was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /surg_hosp_form_docs/1
  def destroy
    @surg_hosp_form_doc.destroy
    redirect_to surg_hosp_form_docs_url, notice: 'Surg hosp form doc was successfully destroyed.'
  end

  def import
    SurgHospFormDoc.import(params[:file])
    redirect_to surg_hosp_form_docs_path, notice: 'Doctor(s) imported successfully'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surg_hosp_form_doc
      @surg_hosp_form_doc = SurgHospFormDoc.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def surg_hosp_form_doc_params
      params.require(:surg_hosp_form_doc).permit(:name, :surg_hosp_form_id)
    end
end
