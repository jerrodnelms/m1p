class ClinicConditionsController < ApplicationController
  before_action :set_clinic_condition, only: [:show, :edit, :update, :destroy]

  # GET /clinic_conditions
  def index
    @clinic_conditions = ClinicCondition.all
  end

  # GET /clinic_conditions/1
  def show
  end

  # GET /clinic_conditions/new
  def new
    @clinic_condition = ClinicCondition.new
  end

  # GET /clinic_conditions/1/edit
  def edit
  end

  # POST /clinic_conditions
  def create
    @clinic_condition = ClinicCondition.new(clinic_condition_params)

    if @clinic_condition.save
      redirect_to @clinic_condition, notice: 'Clinic condition was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /clinic_conditions/1
  def update
    if @clinic_condition.update(clinic_condition_params)
      redirect_to @clinic_condition, notice: 'Clinic condition was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /clinic_conditions/1
  def destroy
    @clinic_condition.destroy
    redirect_to clinic_conditions_url, notice: 'Clinic condition was successfully destroyed.'
  end

  def import
    ClinicCondition.import(params[:file])
    redirect_to clinic_conditions_path, notice: 'Clinic condition(s) imported successfully'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinic_condition
      @clinic_condition = ClinicCondition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def clinic_condition_params
      params.require(:clinic_condition).permit(:name, :clinic_id)
    end
end
