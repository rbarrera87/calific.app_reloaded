json.array!(@vinculaciones) do |vinculacion|
  json.extract! vinculacion, :id, :carrera_id, :perfil_id, :nombre_proyecto, :nombre_director, :fecha_inicio, :fecha_fin
  json.url vinculacion_url(vinculacion, format: :json)
end
