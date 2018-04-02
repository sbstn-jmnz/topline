class PaymenttermsController < ApplicationController
  before_action :set_paymentterm, only: [:show, :edit, :update, :destroy]

  # GET /paymentterms
  # GET /paymentterms.json
  def index
    @paymentterms = Paymentterm.all
  end

  # GET /paymentterms/1
  # GET /paymentterms/1.json
  def show
  end

  # GET /paymentterms/new
  def new
    @paymentterm = Paymentterm.new
  end

  # GET /paymentterms/1/edit
  def edit
  end

  # POST /paymentterms
  # POST /paymentterms.json
  def create
    @paymentterm = Paymentterm.new(paymentterm_params)

    respond_to do |format|
      if @paymentterm.save
        format.html { redirect_to @paymentterm, notice: 'Paymentterm was successfully created.' }
        format.json { render :show, status: :created, location: @paymentterm }
      else
        format.html { render :new }
        format.json { render json: @paymentterm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paymentterms/1
  # PATCH/PUT /paymentterms/1.json
  def update
    respond_to do |format|
      if @paymentterm.update(paymentterm_params)
        format.html { redirect_to @paymentterm, notice: 'Paymentterm was successfully updated.' }
        format.json { render :show, status: :ok, location: @paymentterm }
      else
        format.html { render :edit }
        format.json { render json: @paymentterm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paymentterms/1
  # DELETE /paymentterms/1.json
  def destroy
    @paymentterm.destroy
    respond_to do |format|
      format.html { redirect_to paymentterms_url, notice: 'Paymentterm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paymentterm
      @paymentterm = Paymentterm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paymentterm_params
      params.require(:paymentterm).permit(:clause, :conditions)
    end
end
