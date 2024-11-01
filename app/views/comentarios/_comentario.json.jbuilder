json.extract! comentario, :id, :contenido, :autor, :fecha, :aprobado_por, :respuesta, :genero, :created_at, :updated_at
json.url comentario_url(comentario, format: :json)
