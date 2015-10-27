require 'rails_helper'

RSpec.describe User, type: :model do

  it "has a valid factory" do
  	expect( FactoryGirl.build(:user) ).to be_valid
  end

  it "is invalid without an email" do
    expect( FactoryGirl.build(:user, email: "") ).not_to be_valid
  end

  it "is invalid without a first name" do
    expect( FactoryGirl.build(:user, first_name: "") ).not_to be_valid
  end
  
  it "is invalid without a last name" do
    expect( FactoryGirl.build(:user, last_name: "") ).not_to be_valid
  end
  
  it "returns full name as a string" do
    user = FactoryGirl.build(:user, first_name: "Hello", last_name: "World")
    expect( user.full_name ).to eq("Hello World")
  end
  
end
