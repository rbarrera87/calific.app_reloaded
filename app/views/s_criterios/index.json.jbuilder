json.array!(@s_criterios) do |s_criterio|
  json.extract! s_criterio, :id, :porcentaje, :rubro_uno, :rubro_dos, :rubro_tres, :criterio_id
  json.url s_criterio_url(s_criterio, format: :json)
end
