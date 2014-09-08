class PatientsController < ApplicationController
  def show
    @patient = Patient.find_by(id: params[:id])
    @prescriptions = Prescription.find_by(patient_id: params[:id])
  end
end