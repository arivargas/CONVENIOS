class Experiencium < ActiveRecord::Base
  attr_accessible :comentario, :nombre, :pais, :periodo, :titulo
  
  validates :comentario, :presence => true
  validates :nombre, :presence => true
  validates :nombre, :uniqueness => true
  validates :nombre, :length => { :maximum => 50 }
  #validates :nombre, :format =>{ :with => /^\s*[a-zA-Z,\s]+\s*$/, :message => "El nombre no es válido. No escriba caracteres especiales" }
  validates :pais, :presence => true
  #validates :pais, :format => { :with => /^\s*[a-zA-Z,\s]+\s*$/, :message => "El nombre del país no es válido. No escriba caracteres especiales" }
  validates :periodo, :presence => true
  validates :titulo, :presence => true
  #validates: titulo, :format => { :with =>/^[a-zA-Z0-9]+$/, :message => "El título no es válido. No escriba caracteres especiales" }
    
end