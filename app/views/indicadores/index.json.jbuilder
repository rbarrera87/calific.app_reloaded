json.array!(@indicadores) do |indicadore|
  json.extract! indicadore, :id
  json.url indicadore_url(indicadore, format: :json)
end
