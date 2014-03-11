json.array!(@docentes) do |docente|
  json.extract! docente, :id
  json.url docente_url(docente, format: :json)
end
