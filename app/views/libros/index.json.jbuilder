json.array!(@libros) do |libro|
  json.extract! libro, :id, :nombre, :editorial, :autor, :categoria
  json.url libro_url(libro, format: :json)
end
