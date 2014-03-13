class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  after_create :crear_perfil
self.table_name ="users"
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :asignaturas, through: :user_asignaturas
  has_many :user_asignaturas
  has_one :perfil

  #attr_accessible :roles

  #Roles logic Many roles per user, for more information go to http://bit.ly/IAojjB
  #############################################################################

  ROLES = %w[admin moderator author banned]

  def roles=(roles)
	  self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
	end

	def roles
	  ROLES.reject do |r|
	    ((roles_mask.to_i || 0) & 2**ROLES.index(r)).zero?
	  end
	end

  private
    def crear_perfil
      perfil = self.build_perfil
      perfil.grupo_id = 0
      perfil.carrera_id = 0
      perfil.grado_id = 0
      perfil.save(validate:false)
    end

end
