require 'rails_helper'

RSpec.describe "financial_years/show", type: :view do
  before(:each) do
    @financial_year = assign(:financial_year, FinancialYear.create!(
      :year => 1,
      :budget => "9.99",
      :category => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
