json.array!(@profesors) do |profesor|
  json.extract! profesor, :id, :tipo_horario, :estado
  json.url profesor_url(profesor, format: :json)
end
