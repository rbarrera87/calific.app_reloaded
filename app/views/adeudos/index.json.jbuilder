json.array!(@adeudos) do |adeudo|
  json.extract! adeudo, :id, :numero_libros, :multa, :total, :concepto, :perfil_id, :libro_id
  json.url adeudo_url(adeudo, format: :json)
end
