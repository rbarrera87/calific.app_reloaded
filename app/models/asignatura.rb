class Asignatura < ActiveRecord::Base
  validates_presence_of :nombre
 scope :created_before, ->(time) { where("created_at < ?", time) }
 scope :
end

