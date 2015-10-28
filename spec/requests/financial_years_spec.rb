require 'rails_helper'

RSpec.describe "FinancialYears", type: :request do
  describe "GET /financial_years" do
    it "works! (now write some real specs)" do
      get financial_years_path
      expect(response).to have_http_status(200)
    end
  end
end
