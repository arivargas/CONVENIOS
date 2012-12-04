class AddLatlonToSitio < ActiveRecord::Migration
  def change
    add_column :sitios, :latitud, :string
    add_column :sitios, :longitud, :string
    add_column :sitios, :direccion, :string
  end
end
