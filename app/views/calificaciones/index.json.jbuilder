json.array!(@calificaciones) do |calificacion|
  json.extract! calificacion, :id, :primer_parcial, :segundo_parcial, :tercer_parcial, :calificacion_final
  json.url calificacion_url(calificacion, format: :json)
end
