json.array!(@indicadores) do |indicador|
  json.extract! indicador, :id, :nombre, :valor
  json.url indicador_url(indicador, format: :json)
end
