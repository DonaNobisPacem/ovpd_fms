class FinancialEntriesController < ApplicationController
  before_action :set_financial_entry, only: [:show, :edit, :update, :destroy]

  # GET /financial_entries
  # GET /financial_entries.json
  def index
    @financial_entries = FinancialEntry.paginate(:page => params[:page], :per_page => 30)
  end

  # GET /financial_entries/1
  # GET /financial_entries/1.json
  def show
  end

  # GET /financial_entries/new
  def new
    @financial_entry = FinancialEntry.new(financial_entry_params)
  end

  # GET /financial_entries/1/edit
  def edit
  end

  # POST /financial_entries
  # POST /financial_entries.json
  def create
    @financial_entry = FinancialEntry.new(financial_entry_params)

    respond_to do |format|
      if @financial_entry.save
        format.html { redirect_to @financial_entry, notice: 'Financial entry was successfully created.' }
        format.json { render :show, status: :created, location: @financial_entry }
      else
        format.html { render :new }
        format.json { render json: @financial_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /financial_entries/1
  # PATCH/PUT /financial_entries/1.json
  def update
    respond_to do |format|
      if @financial_entry.update(financial_entry_params)
        format.html { redirect_to @financial_entry, notice: 'Financial entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @financial_entry }
      else
        format.html { render :edit }
        format.json { render json: @financial_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financial_entries/1
  # DELETE /financial_entries/1.json
  def destroy
    @financial_entry.destroy
    respond_to do |format|
      format.html { redirect_to financial_entries_url, notice: 'Financial entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financial_entry
      @financial_entry = FinancialEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def financial_entry_params
      params.require(:financial_entry).permit(:alobs, :description, :party_involved, :transaction_date, :obligation_incurred, :fund_source, :financial_year_id)
    end
end
