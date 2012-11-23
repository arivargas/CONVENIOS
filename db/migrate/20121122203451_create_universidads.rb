class CreateUniversidads < ActiveRecord::Migration
  def change
    create_table :universidads do |t|
      t.string :nombre
      t.float :latitud
      t.float :longitud

      t.timestamps
    end
  end
end
