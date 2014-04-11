json.array!(@vinculaciones) do |vinculacion|
  json.extract! vinculacion, :id, :carrera_id, :perfil_id, :nombre_proyecto
  json.url vinculacion_url(vinculacion, format: :json)
end
