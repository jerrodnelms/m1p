class ClinicsController < ApplicationController
  before_action :set_clinic, only: [:show, :edit, :update, :destroy]

  # GET /clinics
  def index
    @clinics = Clinic.all
  end

  # GET /clinics/1
  def show
  end

  # GET /clinics/new
  def new
    @clinic = Clinic.new
  end

  # GET /clinics/1/edit
  def edit
  end

  # POST /clinics
  def create
    @clinic = Clinic.new(clinic_params)

    if @clinic.save
      redirect_to @clinic, notice: 'Clinic was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /clinics/1
  def update
    if @clinic.update(clinic_params)
      redirect_to @clinic, notice: 'Clinic was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /clinics/1
  def destroy
    @clinic.destroy
    redirect_to clinics_url, notice: 'Clinic was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinic
      @clinic = Clinic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def clinic_params
      params.require(:clinic).permit(:name)
    end
end
