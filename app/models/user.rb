require 'role_model'  
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  self.table_name = "users"
  after_create :crear_perfil
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :asignaturas, through: :user_asignaturas
  has_many :user_asignaturas
  has_one :perfil

  include RoleModel
  
  # optionally set the integer attribute to store the roles in,
  # :roles_mask is the default
  roles_attribute :roles_mask
 
  # declare the valid roles -- do not change the order if you add more
  # roles later, always append them at the end!
 

  #attr_accessible :roles

  #Roles logic Many roles per user, for more information go to http://bit.ly/IAojjB
  #############################################################################
  roles :admin, :alumno, :docente, :director, :bibliotecario

  ROLES = %w[admin alumno docente director bibliotecario]

  def is?(role)
    roles.include?(role.to_s)
  end

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
      perfil.save(validate:false)
    end

end
