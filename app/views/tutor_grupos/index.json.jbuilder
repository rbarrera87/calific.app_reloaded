json.array!(@tutor_grupos) do |tutor_grupo|
  json.extract! tutor_grupo, :id, :grupo_id, :grado_id, :perfil_id
  json.url tutor_grupo_url(tutor_grupo, format: :json)
end
