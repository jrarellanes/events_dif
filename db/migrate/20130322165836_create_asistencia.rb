class CreateAsistencia < ActiveRecord::Migration
  def change
    create_table :asistencia do |t|
      t.integer :persona_id
      t.integer :evento_id

      t.timestamps
    end
  end
end
