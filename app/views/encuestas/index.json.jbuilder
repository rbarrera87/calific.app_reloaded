json.array!(@encuestas) do |encuesta|
  json.extract! encuesta, :id, :nombre
  json.url encuesta_url(encuesta, format: :json)
end
