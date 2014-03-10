class Perfil < ActiveRecord::Base
	self.table_name = "perfiles"
	
		belongs_to :user
		belongs_to :carrera
		belongs_to :grupo
		has_one :consejero

	 
 validates :fotografia_url, :numero_control, :fecha_nacimiento, :estado_civil, :sexo,
           :rfc, :curp, :calle,:poblacion, :estado, :situacion, :turno, presence: true
 validates :cp, :nss,  numericality: true
 validates :nombre, :apellido_materno, :apellido_materno, length: { maximum: 30 }

end 
