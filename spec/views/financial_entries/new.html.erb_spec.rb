require 'rails_helper'

RSpec.describe "financial_entries/new", type: :view do
  before(:each) do
    assign(:financial_entry, FinancialEntry.new(
      :alobs => "MyString",
      :description => "MyString",
      :party_involved => "MyString",
      :obligation_incurred => "9.99",
      :fund_source => "MyString",
      :financial_year => nil
    ))
  end

  it "renders new financial_entry form" do
    render

    assert_select "form[action=?][method=?]", financial_entries_path, "post" do

      assert_select "input#financial_entry_alobs[name=?]", "financial_entry[alobs]"

      assert_select "input#financial_entry_description[name=?]", "financial_entry[description]"

      assert_select "input#financial_entry_party_involved[name=?]", "financial_entry[party_involved]"

      assert_select "input#financial_entry_obligation_incurred[name=?]", "financial_entry[obligation_incurred]"

      assert_select "input#financial_entry_fund_source[name=?]", "financial_entry[fund_source]"

      assert_select "input#financial_entry_financial_year_id[name=?]", "financial_entry[financial_year_id]"
    end
  end
end
