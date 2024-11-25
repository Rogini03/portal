require "application_system_test_case"

class PatientsTest < ApplicationSystemTestCase
  setup do
    @patient = patients(:one)
  end

  test "visiting the index" do
    visit patients_url
    assert_selector "h1", text: "Patients"
  end

  test "should create patient" do
    visit patients_url
    click_on "New patient"

    fill_in "Blood group", with: @patient.blood_group
    fill_in "Date of birth", with: @patient.date_of_birth
    fill_in "Diagnosis", with: @patient.diagnosis
    fill_in "First name", with: @patient.first_name
    fill_in "Gender", with: @patient.gender
    fill_in "Height", with: @patient.height
    fill_in "Last name", with: @patient.last_name
    fill_in "Marital status", with: @patient.marital_status
    fill_in "Mobile number", with: @patient.mobile_number
    fill_in "Occupation", with: @patient.occupation
    fill_in "Op number", with: @patient.op_number
    fill_in "Weight", with: @patient.weight
    click_on "Create Patient"

    assert_text "Patient was successfully created"
    click_on "Back"
  end

  test "should update Patient" do
    visit patient_url(@patient)
    click_on "Edit this patient", match: :first

    fill_in "Blood group", with: @patient.blood_group
    fill_in "Date of birth", with: @patient.date_of_birth
    fill_in "Diagnosis", with: @patient.diagnosis
    fill_in "First name", with: @patient.first_name
    fill_in "Gender", with: @patient.gender
    fill_in "Height", with: @patient.height
    fill_in "Last name", with: @patient.last_name
    fill_in "Marital status", with: @patient.marital_status
    fill_in "Mobile number", with: @patient.mobile_number
    fill_in "Occupation", with: @patient.occupation
    fill_in "Op number", with: @patient.op_number
    fill_in "Weight", with: @patient.weight
    click_on "Update Patient"

    assert_text "Patient was successfully updated"
    click_on "Back"
  end

  test "should destroy Patient" do
    visit patient_url(@patient)
    click_on "Destroy this patient", match: :first

    assert_text "Patient was successfully destroyed"
  end
end
