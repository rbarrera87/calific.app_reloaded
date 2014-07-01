json.array!(@parciales) do |parcial|
  json.extract! parcial, :id, :nombre, :cuatrimestre_id
  json.url parcial_url(parcial, format: :json)
end
