json.array!(@sb_criterios) do |sb_criterio|
  json.extract! sb_criterio, :id, :porcentaje, :rubro_uno, :rubro_dos, :rubro_tres, :criterio_id
  json.url sb_criterio_url(sb_criterio, format: :json)
end
