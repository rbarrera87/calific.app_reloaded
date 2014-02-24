class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :subjects, through: :user_subjects
  has_many :user_subjects

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
end
