class CreateProductos < ActiveRecord::Migration[7.2]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :descripcion
      t.string :stock
      t.string :marca
      t.date :fecha
      t.string :genero

      t.timestamps
    end
  end
end
