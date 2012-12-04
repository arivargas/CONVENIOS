class AddDireccionToUniversidad < ActiveRecord::Migration
  def change
    add_column :universidads, :direccion, :string
  end
end
