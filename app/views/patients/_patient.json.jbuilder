json.extract! patient, :id, :first_name, :last_name, :date_of_birth, :blood_group, :gender, :mobile_number, :occupation, :marital_status, :weight, :height, :diagnosis, :op_number, :created_at, :updated_at
json.url patient_url(patient, format: :json)
