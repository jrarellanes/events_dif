class CreateTipoEventos < ActiveRecord::Migration
  def change
    create_table :tipo_eventos do |t|
      t.string :tipo
      t.text :descripcion

      t.timestamps
    end
  end
end
