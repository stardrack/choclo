json.extract! articulo, :id, :titulo, :contenido, :autor, :fecha, :etiquetas, :genero, :created_at, :updated_at
json.url articulo_url(articulo, format: :json)
