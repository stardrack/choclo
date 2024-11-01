class CreatePedidos < ActiveRecord::Migration[7.2]
  def change
    create_table :pedidos do |t|
      t.string :cliente
      t.date :fecha
      t.string :estado
      t.string :productos
      t.string :metodo
      t.string :genero

      t.timestamps
    end
  end
end
