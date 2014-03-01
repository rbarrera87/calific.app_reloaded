json.array!(@prestamo_libros) do |prestamo_libro|
  json.extract! prestamo_libro, :id
  json.url prestamo_libro_url(prestamo_libro, format: :json)
end
