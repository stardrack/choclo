class CreateArticulos < ActiveRecord::Migration[7.2]
  def change
    create_table :articulos do |t|
      t.string :titulo
      t.string :contenido
      t.date :autor
      t.date :fecha
      t.string :etiquetas
      t.string :genero

      t.timestamps
    end
  end
end
