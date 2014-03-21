class Perfil < ActiveRecord::Base
  self.table_name = "perfiles"
  belongs_to :user
  belongs_to :carrera
  belongs_to :grupo
  belongs_to :grado
  has_one :consejero
  belongs_to :docente
  has_many :asistencias
  has_many :tutorias



  validates :numero_control, :estado_civil, :sexo,
  :rfc, :curp, :calle,:poblacion, :estado, :situacion, :turno, presence: true
  validates :cp, :nss,  numericality: true
  validates :nombre, :apellido_materno, :apellido_materno, length: { maximum: 30 }

end
