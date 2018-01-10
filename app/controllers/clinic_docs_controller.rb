class ClinicDocsController < ApplicationController
  before_action :set_clinic_doc, only: [:show, :edit, :update, :destroy]

  # GET /clinic_docs
  def index
    @clinic_docs = ClinicDoc.all
  end

  # GET /clinic_docs/1
  def show
  end

  # GET /clinic_docs/new
  def new
    @clinic_doc = ClinicDoc.new
  end

  # GET /clinic_docs/1/edit
  def edit
  end

  # POST /clinic_docs
  def create
    @clinic_doc = ClinicDoc.new(clinic_doc_params)

    if @clinic_doc.save
      redirect_to @clinic_doc, notice: 'Clinic doc was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /clinic_docs/1
  def update
    if @clinic_doc.update(clinic_doc_params)
      redirect_to @clinic_doc, notice: 'Clinic doc was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /clinic_docs/1
  def destroy
    @clinic_doc.destroy
    redirect_to clinic_docs_url, notice: 'Clinic doc was successfully destroyed.'
  end

  def import
    ClinicDoc.import(params[:file])
    redirect_to clinic_docs_path, notice: 'Clinic doc(s) imported successfully'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinic_doc
      @clinic_doc = ClinicDoc.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def clinic_doc_params
      params.require(:clinic_doc).permit(:name, :clinic_id)
    end
end
