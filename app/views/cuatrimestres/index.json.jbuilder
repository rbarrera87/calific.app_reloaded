json.array!(@cuatrimestres) do |cuatrimestr|
  json.extract! cuatrimestr, :id, :nombre
  json.url cuatrimestr_url(cuatrimestr, format: :json)
end
