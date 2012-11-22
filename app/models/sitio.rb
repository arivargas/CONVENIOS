class Sitio < ActiveRecord::Base
  attr_accessible :enlace, :nombre
  
  validates :nombre, :presence => true, :uniqueness => true
  validates :enlace, :presence => true, :uniqueness => true
  validates :enlace, :format => { :with => /((http|https)(:\/\/))?([a-zA-Z0-9]+[.]{1}){2}[a-zA-z0-9]+(\/{1}[a-zA-Z0-9]+)*\/?/ }#, :message => "En enlace no es válido. Ej: http://costaricacomidastipicas"}
  
end
