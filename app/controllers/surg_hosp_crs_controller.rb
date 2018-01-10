class SurgHospCrsController < ApplicationController
  before_action :set_surg_hosp_cr, only: [:show, :edit, :update, :destroy]

  # GET /surg_hosp_crs
  def index
    @surg_hosp_crs = SurgHospCr.all
  end

  # GET /surg_hosp_crs/1
  def show
  end

  # GET /surg_hosp_crs/new
  def new
    @surg_hosp_cr = SurgHospCr.new
    3.times do
      surg_hosp_cr_doc = @surg_hosp_cr.surg_hosp_cr_docs.build
      4.times {surg_hosp_cr_doc.surg_hosp_cr_conditions.build}
    end
  end

  # GET /surg_hosp_crs/1/edit
  def edit
  end

  # POST /surg_hosp_crs
  def create
    @surg_hosp_cr = SurgHospCr.new(surg_hosp_cr_params)

    if @surg_hosp_cr.save
      redirect_to @surg_hosp_cr, notice: 'Surg hosp cr was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /surg_hosp_crs/1
  def update
    if @surg_hosp_cr.update(surg_hosp_cr_params)
      redirect_to @surg_hosp_cr, notice: 'Surg hosp cr was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /surg_hosp_crs/1
  def destroy
    @surg_hosp_cr.destroy
    redirect_to surg_hosp_crs_url, notice: 'Surg hosp cr was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surg_hosp_cr
      @surg_hosp_cr = SurgHospCr.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def surg_hosp_cr_params
      params.require(:surg_hosp_cr).permit(:surg_hosp_form_id, :surg_hosp_form_hospital_id, :account_pat_type_id, :account_pat_num, :admit_date, :discharg_date, :any_pertinent_conditions_string, :omitted_conditions_tally, :dnmc_conditions_tally, :actual_conditions_tally, surg_hosp_cr_docs_attributes: [:id, :pcp, :name, :_destroy, surg_hosp_cr_conditions_attributes: [:id, :surg_hosp_cr_doc_id, :type, :name, :detail, :_destroy]] )
    end
end
