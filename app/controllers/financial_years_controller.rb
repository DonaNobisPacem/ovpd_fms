class FinancialYearsController < ApplicationController
  before_action :set_financial_year, only: [:show, :edit, :update, :destroy]

  # GET /financial_years
  # GET /financial_years.json
  def index
    @financial_years = FinancialYear.all
  end

  # GET /financial_years/1
  # GET /financial_years/1.json
  def show
  end

  # GET /financial_years/new
  def new
    @financial_year = FinancialYear.new
  end

  # GET /financial_years/1/edit
  def edit
  end

  # POST /financial_years
  # POST /financial_years.json
  def create
    @financial_year = FinancialYear.new(financial_year_params)

    respond_to do |format|
      if @financial_year.save
        format.html { redirect_to @financial_year, notice: 'Financial year was successfully created.' }
        format.json { render :show, status: :created, location: @financial_year }
      else
        format.html { render :new }
        format.json { render json: @financial_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /financial_years/1
  # PATCH/PUT /financial_years/1.json
  def update
    respond_to do |format|
      if @financial_year.update(financial_year_params)
        format.html { redirect_to @financial_year, notice: 'Financial year was successfully updated.' }
        format.json { render :show, status: :ok, location: @financial_year }
      else
        format.html { render :edit }
        format.json { render json: @financial_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financial_years/1
  # DELETE /financial_years/1.json
  def destroy
    @financial_year.destroy
    respond_to do |format|
      format.html { redirect_to financial_years_url, notice: 'Financial year was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financial_year
      @financial_year = FinancialYear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def financial_year_params
      params.require(:financial_year).permit(:year, :budget, :category_id)
    end
end
