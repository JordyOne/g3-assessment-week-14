require 'rails_helper'
require 'capybara/rails'

feature "Medication" do
  scenario "User can add prescriptions to Patient Page"
  scenario "User can click on patients" do
    user = create_user
    patient = create_patient
    login(user)

    click_on("Some Patient")

    click_on("Add Prescription")

    expect(page).to have_content("Add Precsription to Some User")
  end
end