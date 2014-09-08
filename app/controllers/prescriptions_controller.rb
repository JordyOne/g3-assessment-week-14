class PrescriptionsController < ApplicationController
  protect_from_forgery except: :create

  def new
    @patient = Patient.find_by(id: params[:patient_id])
    @prescription = Prescription.new
    @medications = Medication.all
  end

  def create
    @medication = Medication.find_by(name: params[:Medication])
    @prescription = Prescription.create(patient_id: params[:patient_id], medication_id: @medication.id, dosage: params[:dosage], schedule: params[:schedule], start_on: params[:starts_on], end_on: params[:ends_on])

    if @prescription.save
      redirect_to patient_path(params[:patient_id])
    else
      render new_patient_prescription_path
    end
  end
end