class SurgHospFormConditionsController < ApplicationController
  before_action :set_surg_hosp_form_condition, only: [:show, :edit, :update, :destroy]

  # GET /surg_hosp_form_conditions
  def index
    @surg_hosp_form_conditions = SurgHospFormCondition.all
  end

  # GET /surg_hosp_form_conditions/1
  def show
  end

  # GET /surg_hosp_form_conditions/new
  def new
    @surg_hosp_form_condition = SurgHospFormCondition.new
  end

  # GET /surg_hosp_form_conditions/1/edit
  def edit
  end

  # POST /surg_hosp_form_conditions
  def create
    @surg_hosp_form_condition = SurgHospFormCondition.new(surg_hosp_form_condition_params)

    if @surg_hosp_form_condition.save
      redirect_to @surg_hosp_form_condition, notice: 'Surg hosp form condition was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /surg_hosp_form_conditions/1
  def update
    if @surg_hosp_form_condition.update(surg_hosp_form_condition_params)
      redirect_to @surg_hosp_form_condition, notice: 'Surg hosp form condition was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /surg_hosp_form_conditions/1
  def destroy
    @surg_hosp_form_condition.destroy
    redirect_to surg_hosp_form_conditions_url, notice: 'Surg hosp form condition was successfully destroyed.'
  end

  def import
    SurgHospFormCondition.import(params[:file])
    redirect_to surg_hosp_form_conditions_path, notice: 'Condition(s) imported successfully'
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surg_hosp_form_condition
      @surg_hosp_form_condition = SurgHospFormCondition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def surg_hosp_form_condition_params
      params.require(:surg_hosp_form_condition).permit(:name, :surg_hosp_form_id)
    end
end
