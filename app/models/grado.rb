class Grado < ActiveRecord::Base
  self.table_name = "grados"

  has_many :grupos

  validates_presence_of :nombre

end
