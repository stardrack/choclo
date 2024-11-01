class CreateCategoria < ActiveRecord::Migration[7.2]
  def change
    create_table :categoria do |t|
      t.string :nombre
      t.string :descripcion
      t.date :fecha
      t.string :color
      t.string :icono
      t.string :genero

      t.timestamps
    end
  end
end
