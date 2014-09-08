class Patient < ActiveRecord::Base

  validates_presence_of :first_name, :last_name

  belongs_to :user
  has_many :medications



end