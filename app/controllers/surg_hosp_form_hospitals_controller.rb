class SurgHospFormHospitalsController < ApplicationController
  before_action :set_surg_hosp_form_hospital, only: [:show, :edit, :update, :destroy]

  # GET /surg_hosp_form_hospitals
  def index
    @surg_hosp_form_hospitals = SurgHospFormHospital.all
  end

  # GET /surg_hosp_form_hospitals/1
  def show
  end

  # GET /surg_hosp_form_hospitals/new
  def new
    @surg_hosp_form_hospital = SurgHospFormHospital.new
  end

  # GET /surg_hosp_form_hospitals/1/edit
  def edit
  end

  # POST /surg_hosp_form_hospitals
  def create
    @surg_hosp_form_hospital = SurgHospFormHospital.new(surg_hosp_form_hospital_params)

    if @surg_hosp_form_hospital.save
      redirect_to @surg_hosp_form_hospital, notice: 'Surg hosp form hospital was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /surg_hosp_form_hospitals/1
  def update
    if @surg_hosp_form_hospital.update(surg_hosp_form_hospital_params)
      redirect_to @surg_hosp_form_hospital, notice: 'Surg hosp form hospital was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /surg_hosp_form_hospitals/1
  def destroy
    @surg_hosp_form_hospital.destroy
    redirect_to surg_hosp_form_hospitals_url, notice: 'Surg hosp form hospital was successfully destroyed.'
  end

  def import
    SurgHospFormHospital.import(params[:file])
    redirect_to surg_hosp_form_hospitals_path, notice: 'Hospitals(s) imported successfully'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surg_hosp_form_hospital
      @surg_hosp_form_hospital = SurgHospFormHospital.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def surg_hosp_form_hospital_params
      params.require(:surg_hosp_form_hospital).permit(:name, :surg_hosp_form_id)
    end
end
