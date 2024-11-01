json.extract! pedido, :id, :cliente, :fecha, :estado, :productos, :metodo, :genero, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
