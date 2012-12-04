class Universidad < ActiveRecord::Base
  has_many :Beca
  has_many :Convenio
  attr_accessible :latitud, :longitud, :nombre, :direccion
  
  validates_presence_of :latitud, :longitud, :nombre
  validates :nombre, :uniqueness => true
  
end
