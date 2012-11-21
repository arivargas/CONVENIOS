class CreateBecas < ActiveRecord::Migration
  def change
    create_table :becas do |t|
      t.string :titulo
      t.string :institucion
      t.string :duracion
      t.string :periodo
      t.string :programa
      t.string :modalidad
      t.string :idioma
      t.string :beneficios
      t.string :requisitos
      t.date :fch_limite

      t.timestamps
    end
  end
end
