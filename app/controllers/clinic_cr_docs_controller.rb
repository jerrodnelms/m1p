class ClinicCrDocsController < ApplicationController
  before_action :set_clinic_cr_doc, only: [:show, :edit, :update, :destroy]

  # GET /clinic_cr_docs
  def index
    @clinic_cr_docs = ClinicCrDoc.all
  end

  # GET /clinic_cr_docs/1
  def show
  end

  # GET /clinic_cr_docs/new
  def new
    @clinic_cr_doc = ClinicCrDoc.new
  end

  # GET /clinic_cr_docs/1/edit
  def edit
  end

  # POST /clinic_cr_docs
  def create
    @clinic_cr_doc = ClinicCrDoc.new(clinic_cr_doc_params)

    if @clinic_cr_doc.save
      redirect_to @clinic_cr_doc, notice: 'Clinic cr doc was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /clinic_cr_docs/1
  def update
    if @clinic_cr_doc.update(clinic_cr_doc_params)
      redirect_to @clinic_cr_doc, notice: 'Clinic cr doc was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /clinic_cr_docs/1
  def destroy
    @clinic_cr_doc.destroy
    redirect_to clinic_cr_docs_url, notice: 'Clinic cr doc was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinic_cr_doc
      @clinic_cr_doc = ClinicCrDoc.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def clinic_cr_doc_params
      params.require(:clinic_cr_doc).permit(:clinic_cr_form_id, :clinic_doc_id, :pcp)
    end
end
