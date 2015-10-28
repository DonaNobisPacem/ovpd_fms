require 'rails_helper'

RSpec.describe "financial_entries/index", type: :view do
  before(:each) do
    assign(:financial_entries, [
      FinancialEntry.create!(
        :alobs => "Alobs",
        :description => "Description",
        :party_involved => "Party Involved",
        :obligation_incurred => "9.99",
        :fund_source => "Fund Source",
        :financial_year => nil
      ),
      FinancialEntry.create!(
        :alobs => "Alobs",
        :description => "Description",
        :party_involved => "Party Involved",
        :obligation_incurred => "9.99",
        :fund_source => "Fund Source",
        :financial_year => nil
      )
    ])
  end

  it "renders a list of financial_entries" do
    render
    assert_select "tr>td", :text => "Alobs".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Party Involved".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Fund Source".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
