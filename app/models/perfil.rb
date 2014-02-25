class Perfil < ActiveRecord::Base
	self.table_name = "perfils"
	 after_create :create_profile
  private
    def create_profile
      profile = user.build_profile  							
      profile.save(validate: false)
    end

  validates :nombre, presence: true
  validates :apellido_paterno, presence: true
  validates :apellido_materno, presence: true
  validates :fotografia_url, presence: true
  validates :numero_control, presence: true
  validates :fecha_nacimiento, presence: true
  validates :estado_civil, presence: true
  validates :sexo, presence: true
  validates :cp, numericality: true
  validates :rfc, presence: true
  validates :curp, presence: true
  validates :nss, presence: true
  validates :calle, presence: true
  validates :poblacion, presence: true
  validates :estado, presence: true
  validates :situacion, presence: true
  validates :turno, presence: true
end
