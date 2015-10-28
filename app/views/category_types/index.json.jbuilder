json.array!(@category_types) do |category_type|
  json.extract! category_type, :id, :description
  json.url category_type_url(category_type, format: :json)
end
