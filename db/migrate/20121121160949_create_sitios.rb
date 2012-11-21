class CreateSitios < ActiveRecord::Migration
  def change
    create_table :sitios do |t|
      t.string :nombre
      t.string :enlace

      t.timestamps
    end
  end
end
