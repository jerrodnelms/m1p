class AccountPatTypesController < ApplicationController
  before_action :set_account_pat_type, only: [:show, :edit, :update, :destroy]

  # GET /account_pat_types
  def index
    @account_pat_types = AccountPatType.all
  end

  # GET /account_pat_types/1
  def show
  end

  # GET /account_pat_types/new
  def new
    @account_pat_type = AccountPatType.new
  end

  # GET /account_pat_types/1/edit
  def edit
  end

  # POST /account_pat_types
  def create
    @account_pat_type = AccountPatType.new(account_pat_type_params)

    if @account_pat_type.save
      redirect_to @account_pat_type, notice: 'Account pat type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /account_pat_types/1
  def update
    if @account_pat_type.update(account_pat_type_params)
      redirect_to @account_pat_type, notice: 'Account pat type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /account_pat_types/1
  def destroy
    @account_pat_type.destroy
    redirect_to account_pat_types_url, notice: 'Account pat type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_pat_type
      @account_pat_type = AccountPatType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def account_pat_type_params
      params.require(:account_pat_type).permit(:name, :surg_hosp_form_id)
    end
end
