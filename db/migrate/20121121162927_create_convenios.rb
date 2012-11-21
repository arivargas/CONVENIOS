class CreateConvenios < ActiveRecord::Migration
  def change
    create_table :convenios do |t|
      t.string :titulo
      t.string :pais
      t.string :institucion
      t.string :vigencia
      t.string :carreras
      t.string :duracion
      t.string :modalidad
      t.string :idioma
      t.string :beneficios
      t.string :requisitos
      t.string :datos_adjuntos
      t.references :TipoConvenio

      t.timestamps
    end
    add_index :convenios, :TipoConvenio_id
  end
end
