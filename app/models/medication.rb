class Medication < ActiveRecord::Base

  has_many :patients, :through => :prescription

end
