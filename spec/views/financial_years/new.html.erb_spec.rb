require 'rails_helper'

RSpec.describe "financial_years/new", type: :view do
  before(:each) do
    assign(:financial_year, FinancialYear.new(
      :year => 1,
      :budget => "9.99",
      :category => nil
    ))
  end

  it "renders new financial_year form" do
    render

    assert_select "form[action=?][method=?]", financial_years_path, "post" do

      assert_select "input#financial_year_year[name=?]", "financial_year[year]"

      assert_select "input#financial_year_budget[name=?]", "financial_year[budget]"

      assert_select "input#financial_year_category_id[name=?]", "financial_year[category_id]"
    end
  end
end
