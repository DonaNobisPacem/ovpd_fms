require 'rails_helper'

RSpec.describe "financial_entries/show", type: :view do
  before(:each) do
    @financial_entry = assign(:financial_entry, FinancialEntry.create!(
      :alobs => "Alobs",
      :description => "Description",
      :party_involved => "Party Involved",
      :obligation_incurred => "9.99",
      :fund_source => "Fund Source",
      :financial_year => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Alobs/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Party Involved/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Fund Source/)
    expect(rendered).to match(//)
  end
end
