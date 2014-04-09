json.array!(@sh_criterios) do |sh_criterio|
  json.extract! sh_criterio, :id, :nombre, :porcentaje, :rubro_uno, :rubro_dos, :rubro_tres, :type
  json.url sh_criterio_url(sh_criterio, format: :json)
end
