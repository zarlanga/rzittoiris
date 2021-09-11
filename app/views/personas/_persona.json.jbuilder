json.extract! persona, :id, :nombre, :apellido, :fecha_nacimiento, :nroDNI, :created_at, :updated_at
json.url persona_url(persona, format: :json)
