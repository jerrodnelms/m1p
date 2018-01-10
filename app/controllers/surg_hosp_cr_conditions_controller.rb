class SurgHospCrConditionsController < ApplicationController
  before_action :set_surg_hosp_cr_condition, only: [:show, :edit, :update, :destroy]

  # GET /surg_hosp_cr_conditions
  def index
    @surg_hosp_cr_conditions = SurgHospCrCondition.all
  end

  # GET /surg_hosp_cr_conditions/1
  def show
  end

  # GET /surg_hosp_cr_conditions/new
  def new
    @surg_hosp_cr_condition = SurgHospCrCondition.new
  end

  # GET /surg_hosp_cr_conditions/1/edit
  def edit
  end

  # POST /surg_hosp_cr_conditions
  def create
    @surg_hosp_cr_condition = SurgHospCrCondition.new(surg_hosp_cr_condition_params)

    if @surg_hosp_cr_condition.save
      redirect_to @surg_hosp_cr_condition, notice: 'Surg hosp cr condition was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /surg_hosp_cr_conditions/1
  def update
    if @surg_hosp_cr_condition.update(surg_hosp_cr_condition_params)
      redirect_to @surg_hosp_cr_condition, notice: 'Surg hosp cr condition was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /surg_hosp_cr_conditions/1
  def destroy
    @surg_hosp_cr_condition.destroy
    redirect_to surg_hosp_cr_conditions_url, notice: 'Surg hosp cr condition was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surg_hosp_cr_condition
      @surg_hosp_cr_condition = SurgHospCrCondition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def surg_hosp_cr_condition_params
      params.require(:surg_hosp_cr_condition).permit(:surg_hosp_cr_doc_id, :type, :name, :detail)
    end
end
