class Universidad < ActiveRecord::Base
  attr_accessible :latitud, :longitud, :nombre
  
  validates_presence_of :latitud, :longitud, :nombre
  validates :nombre, :uniqueness => true
  
end
