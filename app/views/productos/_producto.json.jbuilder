json.extract! producto, :id, :nombre, :descripcion, :stock, :marca, :fecha, :genero, :created_at, :updated_at
json.url producto_url(producto, format: :json)
