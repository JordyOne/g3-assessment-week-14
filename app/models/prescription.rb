class Prescription < ActiveRecord::Base

  belongs_to :medication
  belongs_to :patient

  # validates :medication_id, presence: true
  # validates :dosage, presence: true
  # validates :schedule, presence: true
  # validates :start_on, presence: true
  # validates :end_on, presence: true


end
