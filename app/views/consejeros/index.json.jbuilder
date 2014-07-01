json.array!(@consejeros) do |consejero|
  json.extract! consejero, :id, :carrera_id, :grupo_id, :grado_id, :perfil_id
  json.url consejero_url(consejero, format: :json)
end
