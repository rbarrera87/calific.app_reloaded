json.array!(@tutorias) do |tutoria|
  json.extract! tutoria, :id, :mes1, :mes2, :mes3, :mes4, :grado_id, :grupo_id, :perfil_id
  json.url tutoria_url(tutoria, format: :json)
end
