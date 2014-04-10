class Perfil < ActiveRecord::Base
  self.table_name = "perfiles"
  belongs_to :user
  has_one :consejero
  belongs_to :docente
  has_many :tutorias
  has_many :prestamo_libros

  belongs_to :grupo
  belongs_to :carrera, class_name: :Carrera

  has_many :asistencias

 
  has_many :asignaturas, through: :perfiles_asignaturas
  has_many :perfiles_asignaturas, class_name: :PerfilAsignatura


    validates :numero_control, :estado_civil, :sexo,
	           :rfc, :curp, :calle,:poblacion, :estado, :situacion, :turno, presence: true
    validates :cp, :nss,  numericality: true
    validates :nombre, :apellido_materno, :apellido_materno, length: { maximum: 30 }

end
