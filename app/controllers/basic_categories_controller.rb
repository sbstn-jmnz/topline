class BasicCategoriesController < ApplicationController
  before_action :set_basic_category, only: [:show, :edit, :update, :destroy]

  # GET /basic_categories
  # GET /basic_categories.json
  def index
    @basic_categories = BasicCategory.all
  end

  # GET /basic_categories/1
  # GET /basic_categories/1.json
  def show
  end

  # GET /basic_categories/new
  def new
    @basic_category = BasicCategory.new
  end

  # GET /basic_categories/1/edit
  def edit
  end

  # POST /basic_categories
  # POST /basic_categories.json
  def create
    @basic_category = BasicCategory.new(basic_category_params)

    respond_to do |format|
      if @basic_category.save
        format.html { redirect_to @basic_category, notice: 'Basic category was successfully created.' }
        format.json { render :show, status: :created, location: @basic_category }
      else
        format.html { render :new }
        format.json { render json: @basic_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basic_categories/1
  # PATCH/PUT /basic_categories/1.json
  def update
    respond_to do |format|
      if @basic_category.update(basic_category_params)
        format.html { redirect_to @basic_category, notice: 'Basic category was successfully updated.' }
        format.json { render :show, status: :ok, location: @basic_category }
      else
        format.html { render :edit }
        format.json { render json: @basic_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basic_categories/1
  # DELETE /basic_categories/1.json
  def destroy
    @basic_category.destroy
    respond_to do |format|
      format.html { redirect_to basic_categories_url, notice: 'Basic category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basic_category
      @basic_category = BasicCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basic_category_params
      params.require(:basic_category).permit(:name)
    end
end
