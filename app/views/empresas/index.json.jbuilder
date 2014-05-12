json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :nombre, :direcion, :numero, :telefono, :razon_social, :estado, :municipio, :descripcion
  json.url empresa_url(empresa, format: :json)
end
