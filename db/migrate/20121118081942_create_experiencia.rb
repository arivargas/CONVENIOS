class CreateExperiencia < ActiveRecord::Migration
  def change
    create_table :experiencia do |t|
      t.string :nombre
      t.string :titulo
      t.string :comentario
      t.string :periodo
      t.string :pais

      t.timestamps
    end
  end
end
