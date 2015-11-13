class FinancialEntry < ActiveRecord::Base
  belongs_to :financial_year

  validates :financial_year, presence: true
  validates :obligation_incurred, numericality: { :greater_than => 0 }

  validate :transaction_date_within_financial_year
  validate :obligation_within_balance

  private

  	def transaction_date_within_financial_year
  		lower_bound = Date.new( FinancialYear.find(financial_year_id).year )
  		upper_bound = lower_bound.end_of_year
  		errors.add(:transaction_date, "Transaction date not within specified financial year") unless ( lower_bound <= transaction_date && transaction_date <= upper_bound ) 
  		return true
  	end

    def has_positive_balance
      self.financial_year.category.positive_balance
    end

    def obligation_within_balance
      if has_positive_balance
        errors.add(:obligation_incurred, "Obligation incurred cannot exceed remaining balance") if obligation_incurred > self.financial_year.yearly_balance
      else
        return true
      end
      return true
    end
end
