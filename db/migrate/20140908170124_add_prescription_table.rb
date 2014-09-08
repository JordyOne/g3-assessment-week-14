class AddPrescriptionTable < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.integer :patient_id
      t.integer :medication_id
      t.string :dosage
      t.string :schedule
      t.date :start_on
      t.date :end_on
    end
  end
end
