require 'rails_helper'

RSpec.describe "categories/new", type: :view do
  before(:each) do
    assign(:category, Category.new(
      :type => 1,
      :positive_balance => false
    ))
  end

  it "renders new category form" do
    render

    assert_select "form[action=?][method=?]", categories_path, "post" do

      assert_select "input#category_type[name=?]", "category[type]"

      assert_select "input#category_positive_balance[name=?]", "category[positive_balance]"
    end
  end
end
