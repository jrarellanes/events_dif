class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :apaterno
      t.string :amaterno
      t.string :ocupacion
      t.string :correo
      t.string :comunidadOrigen
      t.string :colonia
      t.integer :nfam

      t.timestamps
    end
  end
end
