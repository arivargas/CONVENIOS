class TipoConvenio < ActiveRecord::Base
  attr_accessible :descripcion, :nombre
  
  validates :nombre, :presence => true, :uniqueness => true
  validates :descripcion, :presence => true
  
  def self.count_tipo_convenios()
    result = count(:all)
  end
    
end
  