require 'rails_helper'

RSpec.describe "category_types/show", type: :view do
  before(:each) do
    @category_type = assign(:category_type, CategoryType.create!(
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
  end
end
