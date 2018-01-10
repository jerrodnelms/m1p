class ClinicCrConditionsController < ApplicationController
  before_action :set_clinic_cr_condition, only: [:show, :edit, :update, :destroy]

  # GET /clinic_cr_conditions
  def index
    @clinic_cr_conditions = ClinicCrCondition.all
  end

  # GET /clinic_cr_conditions/1
  def show
  end

  # GET /clinic_cr_conditions/new
  def new
    @clinic_cr_condition = ClinicCrCondition.new
  end

  # GET /clinic_cr_conditions/1/edit
  def edit
  end

  # POST /clinic_cr_conditions
  def create
    @clinic_cr_condition = ClinicCrCondition.new(clinic_cr_condition_params)

    if @clinic_cr_condition.save
      redirect_to @clinic_cr_condition, notice: 'Clinic cr condition was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /clinic_cr_conditions/1
  def update
    if @clinic_cr_condition.update(clinic_cr_condition_params)
      redirect_to @clinic_cr_condition, notice: 'Clinic cr condition was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /clinic_cr_conditions/1
  def destroy
    @clinic_cr_condition.destroy
    redirect_to clinic_cr_conditions_url, notice: 'Clinic cr condition was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinic_cr_condition
      @clinic_cr_condition = ClinicCrCondition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def clinic_cr_condition_params
      params.require(:clinic_cr_condition).permit(:clinic_cr_doc_id, :type, :clinic_condition_id, :detail)
    end
end
