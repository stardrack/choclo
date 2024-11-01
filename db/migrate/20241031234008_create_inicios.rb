class CreateInicios < ActiveRecord::Migration[7.2]
  def change
    create_table :inicios do |t|
      t.string :nombre
      t.string :email
      t.date :fecha
      t.string :direccion
      t.string :telefono
      t.string :genero

      t.timestamps
    end
  end
end
