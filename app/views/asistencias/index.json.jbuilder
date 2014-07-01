json.array!(@asistencias) do |asistencia|
  json.extract! asistencia, :id, :presente
  json.url asistencia_url(asistencia, format: :json)
end
