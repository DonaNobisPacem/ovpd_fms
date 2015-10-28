require 'rails_helper'

RSpec.describe "category_types/edit", type: :view do
  before(:each) do
    @category_type = assign(:category_type, CategoryType.create!(
      :description => "MyString"
    ))
  end

  it "renders the edit category_type form" do
    render

    assert_select "form[action=?][method=?]", category_type_path(@category_type), "post" do

      assert_select "input#category_type_description[name=?]", "category_type[description]"
    end
  end
end
