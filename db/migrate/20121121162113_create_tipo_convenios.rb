class CreateTipoConvenios < ActiveRecord::Migration
  def change
    create_table :tipo_convenios do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
