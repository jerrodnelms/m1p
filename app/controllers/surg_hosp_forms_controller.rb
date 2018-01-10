class SurgHospFormsController < ApplicationController
  before_action :set_surg_hosp_form, only: [:show, :edit, :update, :destroy]

  # GET /surg_hosp_forms
  def index
    @surg_hosp_forms = SurgHospForm.all
  end

  # GET /surg_hosp_forms/1
  def show
  end

  # GET /surg_hosp_forms/new
  def new
    @surg_hosp_form = SurgHospForm.new
  end

  # GET /surg_hosp_forms/1/edit
  def edit
  end

  # POST /surg_hosp_forms
  def create
    @surg_hosp_form = SurgHospForm.new(surg_hosp_form_params)

    if @surg_hosp_form.save
      redirect_to @surg_hosp_form, notice: 'Surg hosp form was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /surg_hosp_forms/1
  def update
    if @surg_hosp_form.update(surg_hosp_form_params)
      redirect_to @surg_hosp_form, notice: 'Surg hosp form was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /surg_hosp_forms/1
  def destroy
    @surg_hosp_form.destroy
    redirect_to surg_hosp_forms_url, notice: 'Surg hosp form was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surg_hosp_form
      @surg_hosp_form = SurgHospForm.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def surg_hosp_form_params
      params.require(:surg_hosp_form).permit(:name)
    end
end
