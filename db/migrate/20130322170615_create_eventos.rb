class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :nombre
      t.integer :tipo_evento_id
      t.date :fecha
      t.string :ubicacion
      t.text :descripcion
      t.integer :cupo
      t.time :hora

      t.timestamps
    end
  end
end
