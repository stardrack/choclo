class CreateComentarios < ActiveRecord::Migration[7.2]
  def change
    create_table :comentarios do |t|
      t.string :contenido
      t.string :autor
      t.date :fecha
      t.string :aprobado_por
      t.string :respuesta
      t.string :genero

      t.timestamps
    end
  end
end
