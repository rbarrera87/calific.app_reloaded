json.array!(@calificaciones) do |calificacion|
  json.extract! calificacion, :id, :calificacion_ordinaria, :calificacion_remedial, :calificacion_extraordinaria, :calificacion_final
  json.url calificacion_url(calificacion, format: :json)
end
