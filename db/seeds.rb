# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'roo'


Category.create!([
		{:description => "MOOE", :positive_balance => true },
		{:description => "Special Monitoring", :positive_balance => true },
		{:description => "For Monitoring", :positive_balance => false }
	])

FinancialYear.create!([
		{:year => "2015", :budget => "3136000", :category_id => "1" },
		{:year => "2015", :budget => "16407000", :category_id => "2" },
		{:year => "2015", :budget => "0", :category_id => "3" }
	])

xlsx = Roo::Spreadsheet.open('./db/finances.xlsx')
xlsx.default_sheet = xlsx.sheets[2]
2.upto(161) do |line|
	params =  
	{ :financial_entry =>
		{
			:alobs => xlsx.cell(line, 'E'),
			:description => xlsx.cell(line, 'F'),
			:party_involved => xlsx.cell(line, 'G'),
			:transaction_date => xlsx.cell(line, 'H'),
			:obligation_incurred => xlsx.cell(line, 'I'),
			:fund_source => "",
			:financial_year_id => "1",
		}
	}
	FinancialEntry.new(params[:financial_entry]).save(validate: false)
end

xlsx.default_sheet = xlsx.sheets[3]
2.upto(84) do |line|
	params =  
	{ :financial_entry =>
		{
			:alobs => xlsx.cell(line, 'E'),
			:description => xlsx.cell(line, 'F'),
			:party_involved => xlsx.cell(line, 'G'),
			:transaction_date => xlsx.cell(line, 'H'),
			:obligation_incurred => xlsx.cell(line, 'I'),
			:fund_source => "",
			:financial_year_id => "2",
		}
	}
	FinancialEntry.new(params[:financial_entry]).save(validate: false)
end

xlsx.default_sheet = xlsx.sheets[4]
2.upto(5) do |line|
	params =  
	{ :financial_entry =>
		{
			:alobs => xlsx.cell(line, 'E'),
			:description => xlsx.cell(line, 'F'),
			:party_involved => xlsx.cell(line, 'G'),
			:transaction_date => xlsx.cell(line, 'H'),
			:obligation_incurred => xlsx.cell(line, 'I'),
			:fund_source => xlsx.cell(line, 'J'),
			:financial_year_id => "3",
		}
	}
	FinancialEntry.new(params[:financial_entry]).save(validate: false)
end