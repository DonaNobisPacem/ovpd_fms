require 'rails_helper'

RSpec.describe "categories/edit", type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      :type => 1,
      :positive_balance => false
    ))
  end

  it "renders the edit category form" do
    render

    assert_select "form[action=?][method=?]", category_path(@category), "post" do

      assert_select "input#category_type[name=?]", "category[type]"

      assert_select "input#category_positive_balance[name=?]", "category[positive_balance]"
    end
  end
end
