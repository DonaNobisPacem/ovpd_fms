require 'rails_helper'

RSpec.describe "financial_years/index", type: :view do
  before(:each) do
    assign(:financial_years, [
      FinancialYear.create!(
        :year => 1,
        :budget => "9.99",
        :category => nil
      ),
      FinancialYear.create!(
        :year => 1,
        :budget => "9.99",
        :category => nil
      )
    ])
  end

  it "renders a list of financial_years" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
