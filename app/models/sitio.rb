class Sitio < ActiveRecord::Base
  
  has_many :Beca
  has_many :Convenio
  
  attr_accessible :enlace, :nombre, :latitud, :longitud, :direccion
  
  validates :nombre, :presence => true, :uniqueness => true
  validates :enlace, :presence => true, :uniqueness => true
  validates :enlace, :format => { :with => /((http|https)(:\/\/))?([a-zA-Z0-9]+[.]{1}){2}[a-zA-z0-9]+(\/{1}[a-zA-Z0-9]+)*\/?/ }#, :message => "En enlace no es válido. Ej: http://costaricacomidastipicas"}
  
end
