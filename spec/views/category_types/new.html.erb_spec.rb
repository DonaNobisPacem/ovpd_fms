require 'rails_helper'

RSpec.describe "category_types/new", type: :view do
  before(:each) do
    assign(:category_type, CategoryType.new(
      :description => "MyString"
    ))
  end

  it "renders new category_type form" do
    render

    assert_select "form[action=?][method=?]", category_types_path, "post" do

      assert_select "input#category_type_description[name=?]", "category_type[description]"
    end
  end
end
