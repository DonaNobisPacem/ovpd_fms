class FinancialEntry < ActiveRecord::Base
  belongs_to :financial_year

  validates :financial_year, presence: true
  validates :alobs, presence: true, uniqueness: true
  validates :description, presence: true
  validates :party_involved, presence: true
  validates :transaction_date, presence: true
  validates :obligation_incurred, presence: true, numericality: { only_integer: true, :greater_than => 0 }
  validates :fund_source, presence: true
end
