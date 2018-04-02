class SupplieraccountsController < ApplicationController
  before_action :set_supplieraccount, only: [:show, :edit, :update, :destroy]

  # GET /supplieraccounts
  # GET /supplieraccounts.json
  def index
    @supplieraccounts = Supplieraccount.all
  end

  # GET /supplieraccounts/1
  # GET /supplieraccounts/1.json
  def show
  end

  # GET /supplieraccounts/new
  def new
    @supplieraccount = Supplieraccount.new
  end

  # GET /supplieraccounts/1/edit
  def edit
  end

  # POST /supplieraccounts
  # POST /supplieraccounts.json
  def create
    @supplieraccount = Supplieraccount.new(supplieraccount_params)

    respond_to do |format|
      if @supplieraccount.save
        format.html { redirect_to @supplieraccount, notice: 'Supplieraccount was successfully created.' }
        format.json { render :show, status: :created, location: @supplieraccount }
      else
        format.html { render :new }
        format.json { render json: @supplieraccount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supplieraccounts/1
  # PATCH/PUT /supplieraccounts/1.json
  def update
    respond_to do |format|
      if @supplieraccount.update(supplieraccount_params)
        format.html { redirect_to @supplieraccount, notice: 'Supplieraccount was successfully updated.' }
        format.json { render :show, status: :ok, location: @supplieraccount }
      else
        format.html { render :edit }
        format.json { render json: @supplieraccount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplieraccounts/1
  # DELETE /supplieraccounts/1.json
  def destroy
    @supplieraccount.destroy
    respond_to do |format|
      format.html { redirect_to supplieraccounts_url, notice: 'Supplieraccount was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplieraccount
      @supplieraccount = Supplieraccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supplieraccount_params
      params.require(:supplieraccount).permit(:supplier_id, :bank, :address, :account, :swift, :other)
    end
end
