class Subject < ActiveRecord::Base
	has_many :users, through: :user_subjects
	has_many :user_subjects

	validates_presence_of :name
end
