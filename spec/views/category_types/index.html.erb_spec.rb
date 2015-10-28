require 'rails_helper'

RSpec.describe "category_types/index", type: :view do
  before(:each) do
    assign(:category_types, [
      CategoryType.create!(
        :description => "Description"
      ),
      CategoryType.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of category_types" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
