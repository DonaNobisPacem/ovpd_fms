class FinancialYear < ActiveRecord::Base
  belongs_to :category

  validates :category, presence: true
  validates :year, presence: true, numericality: { only_integer: true, :greater_than => 0 }
  validates :budget, presence: true, numericality: { :greater_than_or_equal => 0 }

  validate :validate_balance

  has_many :financial_entries, :dependent => :destroy
  accepts_nested_attributes_for :financial_entries

  def yearly_balance
  	balance = self.budget - yearly_spendings 
  end

  def yearly_spendings
  	spendings = 0.00
  	self.financial_entries.each do |entry|
  		spendings += entry.obligation_incurred
  	end
  	return spendings
  end

  private

  	def has_positive_balance
  		self.category.positive_balance
  	end

  	def validate_balance
  		if has_positive_balance
  			errors[:base] << "Balance limit reached!" if yearly_balance < 0
  		else
  			errors[:base] << "Error has occurred, balance cannot be positive as budget is zero!" if yearly_balance > 0
  		end
      return true
  	end
end
