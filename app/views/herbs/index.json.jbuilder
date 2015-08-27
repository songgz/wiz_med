json.array!(@herbs) do |herb|
  json.extract! herb, :id
  json.url herb_url(herb, format: :json)
end
