class ClinicCrFormsController < ApplicationController
  before_action :set_clinic_cr_form, only: [:show, :edit, :update, :destroy]

  # GET /clinic_cr_forms
  def index
    @clinic_cr_forms = ClinicCrForm.all
  end

  # GET /clinic_cr_forms/1
  def show
  end

  # GET /clinic_cr_forms/new
  def new
    @clinic_cr_form = ClinicCrForm.new
    3.times do
      clinic_cr_doc = @clinic_cr_form.clinic_cr_docs.build
      4.times {clinic_cr_doc.clinic_cr_conditions.build}
    end
  end

  # GET /clinic_cr_forms/1/edit
  def edit
  end

  # POST /clinic_cr_forms
  def create
    @clinic_cr_form = ClinicCrForm.new(clinic_cr_form_params)

    if @clinic_cr_form.save
      redirect_to @clinic_cr_form, notice: 'Clinic cr form was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /clinic_cr_forms/1
  def update
    if @clinic_cr_form.update(clinic_cr_form_params)
      redirect_to @clinic_cr_form, notice: 'Clinic cr form was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /clinic_cr_forms/1
  def destroy
    @clinic_cr_form.destroy
    redirect_to clinic_cr_forms_url, notice: 'Clinic cr form was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinic_cr_form
      @clinic_cr_form = ClinicCrForm.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def clinic_cr_form_params
      params.require(:clinic_cr_form).permit(:clinic_id, :mysis_id, :any_pertinent_conditions, :actual_conditions_tally, :misdiagnosed_conditions_tally, :captured_conditions_tally, clinic_cr_docs_attributes: [:id, :pcp, :clinic_doc_id, :_destroy, clinic_cr_conditions_attributes: [:id, :clinic_cr_doc_id, :type, :clinic_condition_id, :detail, :_destroy]])
    end
end

