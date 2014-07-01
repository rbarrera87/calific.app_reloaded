json.array!(@criterios) do |criterio|
  json.extract! criterio, :id
  json.url criterio_url(criterio, format: :json)
end
