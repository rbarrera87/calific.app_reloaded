json.array!(@criterios) do |criterio|
  json.extract! criterio, :id, :descripcion, :carrera_id, :calificacion_id
  json.url criterio_url(criterio, format: :json)
end
