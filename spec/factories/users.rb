require 'ffaker'

FactoryGirl.define do

  factory :user do |f|
    f.email { FFaker::Internet.email }
    f.first_name { FFaker::Name.first_name }
    f.last_name { FFaker::Name.last_name }
    f.password "password"
    f.password_confirmation "password"
  end

end
