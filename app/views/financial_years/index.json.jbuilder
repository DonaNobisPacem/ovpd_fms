json.array!(@financial_years) do |financial_year|
  json.extract! financial_year, :id, :year, :budget, :category_id
  json.url financial_year_url(financial_year, format: :json)
end
