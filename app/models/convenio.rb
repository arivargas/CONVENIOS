class Convenio < ActiveRecord::Base
  belongs_to :TipoConvenio
  belongs_to :Sitio
  belongs_to :Universidad
  
  attr_accessible :beneficios, :carreras, :datos_adjuntos, :duracion, :idioma, :institucion, :modalidad, :pais, :requisitos, :titulo, :vigencia, :TipoConvenio_id, :Sitio_id, :Universidad_id
  
  validates_presence_of :beneficios, :carreras,:duracion, :idioma, :institucion, :modalidad, :pais, :requisitos, :titulo, :vigencia, :tipo_convenio
  validates :titulo, :uniqueness => true#, :message => {"El título ya ha sido usado"}
  
end
