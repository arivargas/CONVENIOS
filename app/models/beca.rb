class Beca < ActiveRecord::Base

  belongs_to :Sitio
  belongs_to :Universidad
  
  attr_accessible :beneficios, :duracion, :fch_limite, :idioma, :institucion, :modalidad, :periodo, :programa, :requisitos, :titulo, :Sitio_id, :Universidad_id
  
  validates_presence_of :beneficios, :duracion, :fch_limite, :idioma, :institucion, :modalidad, :periodo, :programa, :requisitos, :titulo
  validates :titulo, :uniqueness => true#, :message => { "El título ya ha sido usado" }
  #validates_date :fch_limite, :on_or_before => lambda { Date.current }
end
