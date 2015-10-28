json.array!(@financial_entries) do |financial_entry|
  json.extract! financial_entry, :id, :alobs, :description, :party_involved, :transaction_date, :obligation_incurred, :fund_source, :financial_year_id
  json.url financial_entry_url(financial_entry, format: :json)
end
