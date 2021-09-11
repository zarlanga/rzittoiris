class CreatePersonas < ActiveRecord::Migration[6.1]
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :apellido
      t.date :fecha_nacimiento
      t.integer :nroDNI

      t.timestamps
    end
  end
end
