require 'rails_helper'

RSpec.describe "financial_years/edit", type: :view do
  before(:each) do
    @financial_year = assign(:financial_year, FinancialYear.create!(
      :year => 1,
      :budget => "9.99",
      :category => nil
    ))
  end

  it "renders the edit financial_year form" do
    render

    assert_select "form[action=?][method=?]", financial_year_path(@financial_year), "post" do

      assert_select "input#financial_year_year[name=?]", "financial_year[year]"

      assert_select "input#financial_year_budget[name=?]", "financial_year[budget]"

      assert_select "input#financial_year_category_id[name=?]", "financial_year[category_id]"
    end
  end
end
