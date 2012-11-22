class TipoConvenio < ActiveRecord::Base
  attr_accessible :descripcion, :nombre
  
  validates :nombre, :presence => true, :uniqueness => true
  validates :descripcion, :presence => true, :uniqueness => true
  
end
  