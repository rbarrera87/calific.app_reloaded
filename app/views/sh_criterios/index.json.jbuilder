json.array!(@sh_criterios) do |sh_criterio|
  json.extract! sh_criterio, :id, :porcentaje, :rubro_uno, :rubro_dos, :rubro_tres, :criterio_id
  json.url sh_criterio_url(sh_criterio, format: :json)
end
