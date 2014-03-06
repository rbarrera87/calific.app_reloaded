json.array!(@profesor_catalogos) do |profesor_catalogo|
  json.extract! profesor_catalogo, :id, :tipo_horario, :estado
  json.url profesor_catalogo_url(profesor_catalogo, format: :json)
end
