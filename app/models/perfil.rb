class Perfil < ActiveRecord::Base
	self.table_name = "perfiles"
	 
 validates :fotografia_url, :numero_control, :fecha_nacimiento, :estado_civil, :sexo,
           :rfc, :curp, :calle,:poblacion, :estado, :situacion, :turno, presence: true
 validates :cp, :nss,  numericality: true
 validates :nombre, :apellido_materno, :apellido_materno, length: { maximum: 30 }
end 
