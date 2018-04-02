class SelleraccountsController < ApplicationController
  before_action :set_selleraccount, only: [:show, :edit, :update, :destroy]

  # GET /selleraccounts
  # GET /selleraccounts.json
  def index
    @selleraccounts = Selleraccount.all
  end

  # GET /selleraccounts/1
  # GET /selleraccounts/1.json
  def show
  end

  # GET /selleraccounts/new
  def new
    @selleraccount = Selleraccount.new
  end

  # GET /selleraccounts/1/edit
  def edit
  end

  # POST /selleraccounts
  # POST /selleraccounts.json
  def create
    @selleraccount = Selleraccount.new(selleraccount_params)

    respond_to do |format|
      if @selleraccount.save
        format.html { redirect_to @selleraccount, notice: 'Selleraccount was successfully created.' }
        format.json { render :show, status: :created, location: @selleraccount }
      else
        format.html { render :new }
        format.json { render json: @selleraccount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /selleraccounts/1
  # PATCH/PUT /selleraccounts/1.json
  def update
    respond_to do |format|
      if @selleraccount.update(selleraccount_params)
        format.html { redirect_to @selleraccount, notice: 'Selleraccount was successfully updated.' }
        format.json { render :show, status: :ok, location: @selleraccount }
      else
        format.html { render :edit }
        format.json { render json: @selleraccount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selleraccounts/1
  # DELETE /selleraccounts/1.json
  def destroy
    @selleraccount.destroy
    respond_to do |format|
      format.html { redirect_to selleraccounts_url, notice: 'Selleraccount was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selleraccount
      @selleraccount = Selleraccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def selleraccount_params
      params.require(:selleraccount).permit(:seller_id, :bank, :address, :account, :swift, :other)
    end
end
