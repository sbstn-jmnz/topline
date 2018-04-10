class QuotationdetailsController < ApplicationController
  before_action :set_quotationdetail, only: [:show, :edit, :update, :destroy]

  # GET /quotationdetails
  # GET /quotationdetails.json
  def index
    @quotationdetails = Quotationdetail.all
  end

  # GET /quotationdetails/1
  # GET /quotationdetails/1.json
  def show
  end

  # GET /quotationdetails/new
  def new
    @quotationdetail = Quotationdetail.new
  end

  # GET /quotationdetails/1/edit
  def edit
  end

  # POST /quotationdetails
  # POST /quotationdetails.json
  def create
    @quotationdetail = Quotationdetail.new(quotationdetail_params)

    respond_to do |format|
      if @quotationdetail.save
        format.html { redirect_to @quotationdetail, notice: 'Quotationdetail was successfully created.' }
        format.json { render :show, status: :created, location: @quotationdetail }
      else
        format.html { render :new }
        format.json { render json: @quotationdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quotationdetails/1
  # PATCH/PUT /quotationdetails/1.json
  def update
    respond_to do |format|
      if @quotationdetail.update(quotationdetail_params)
        format.html { redirect_to @quotationdetail, notice: 'Quotationdetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @quotationdetail }
      else
        format.html { render :edit }
        format.json { render json: @quotationdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quotationdetails/1
  # DELETE /quotationdetails/1.json
  def destroy
    @quotationdetail.destroy
    respond_to do |format|
      format.html { redirect_to quotationdetails_url, notice: 'Quotationdetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quotationdetail
      @quotationdetail = Quotationdetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quotationdetail_params
      params.require(:quotationdetail).permit(:quotation_id, :brand_id, :product_id, :color_id, :quantity, :size_id, :ratio, :deliverydate, :targetprice, :finalprice, :otherdetails,
        variants_attributes: Variant.attribute_names.map(&:to_sym).push(:_destroy))
    end
end
