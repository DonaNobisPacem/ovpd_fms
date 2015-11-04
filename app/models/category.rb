class Category < ActiveRecord::Base
  validates :description, presence: true, uniqueness: true
  
  has_many :financial_years, :dependent => :destroy
  accepts_nested_attributes_for :financial_years
end
