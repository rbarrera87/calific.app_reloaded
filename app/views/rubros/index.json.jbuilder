json.array!(@rubros) do |rubro|
  json.extract! rubro, :id, :sb1, :sb2, :sb3, :sh1, :sh2, :sh3, :s1, :s2, :s3, :calificacion_id, :asignatura_id
  json.url rubro_url(rubro, format: :json)
end
