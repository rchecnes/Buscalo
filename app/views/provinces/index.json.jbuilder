json.array!(@provinces) do |province|
  json.extract! province, :id, :name, :description
  json.url province_url(province, format: :json)
end
