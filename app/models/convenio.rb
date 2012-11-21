class Convenio < ActiveRecord::Base
  belongs_to :TipoConvenio
  attr_accessible :beneficios, :carreras, :datos_adjuntos, :duracion, :idioma, :institucion, :modalidad, :pais, :requisitos, :titulo, :vigencia
end
