require 'faker'
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
User.create!([{
  name: "Syed",
  role: 0,
  email: "syed@gmail.com",
  password: "password"
},
{
  name: "Dina",
  role: 1,
  email: "dina@gmail.com",
  password: "password"

},
{
  name: "Guna",
  role: 0,
  email: "guna@gmail.com",
  password: "password"

},
{
  name: "Sundar",
  role: 1,
  email: "sundar@gmail.com",
  password: "password"

}
])

p "Created #{User.count} users"
#patient create
Patient.destroy_all
99.times do
  first_name  = Faker::Name.unique.name
  last_name = Faker::Name.unique.name
  mobile_number = Faker::PhoneNumber.phone_number.gsub(/\D/, '')
  blood_group = rand(1..7)
  date_of_birth = Faker::Date.birthday(min_age: 18, max_age: 65).strftime("%d-%m-%Y")
  diagnosis = Faker::Lorem.paragraphs#(number:2).join("")
  created_at = rand((DateTime.now - 3.months)..DateTime.now)
  Patient.create!(first_name: first_name,
              last_name: last_name,
              mobile_number: mobile_number,
              blood_group: blood_group,
              gender: 0,
              date_of_birth: date_of_birth,
              diagnosis: diagnosis,
              created_at: created_at)
end
# Patient.create!([{
#   first_name: "John",
#   last_name: "Ponnappa",
#   mobile_number: "8973432425",
#   gender:0,
#   blood_group: 2,
#   date_of_birth: "29/11/2000",
#   diagnosis: "As you know, ICD is a diagnostic tool used for clinical, health management, and epidemiologic purposes, enabling analysis, assessment, and comparison of the incidence and prevalence of medical conditions, morbidity, and mortality data across the world. ICD-10 includes updated codes for signs and symptoms, diseases, procedures, abnormal findings, external causes of injury or disease, and social circumstances. Importantly, ICD-10 is much more than a simple updated version of ICD-9. Rather, it’s essentially a complete revamp and modernization of medical classifications, including nearly 70,000 new codes and more detailed 7-digit alphanumeric codes.1,2,3"
# },
# {
#   first_name: "Mark",
#   last_name: "Anitha",
#   mobile_number: "9087654213",
#   gender:1,
#   blood_group: 4,
#   date_of_birth: "29/12/2021",
#   marital_status: 1,
#   diagnosis: "As you know, ICD is a diagnostic tool used for clinical, health management, and epidemiologic purposes, enabling analysis, assessment, and comparison of the incidence and prevalence of medical conditions, morbidity, and mortality data across the world. ICD-10 includes updated codes for signs and symptoms, diseases, procedures, abnormal findings, external causes of injury or disease, and social circumstances. Importantly, ICD-10 is much more than a simple updated version of ICD-9. Rather, it’s essentially a complete revamp and modernization of medical classifications, including nearly 70,000 new codes and more detailed 7-digit alphanumeric codes.1,2,3"
# },
# {
#   first_name: "Viji",
#   last_name: "Sukri",
#   mobile_number: "9097654290",
#   gender:1,
#   blood_group: 3,
#   date_of_birth: "29/12/1988",
#   marital_status: 1,
#   diagnosis: "As you know, ICD is a diagnostic tool used for clinical, health management, and epidemiologic purposes, enabling analysis, assessment, and comparison of the incidence and prevalence of medical conditions, morbidity, and mortality data across the world. ICD-10 includes updated codes for signs and symptoms, diseases, procedures, abnormal findings, external causes of injury or disease, and social circumstances. Importantly, ICD-10 is much more than a simple updated version of ICD-9. Rather, it’s essentially a complete revamp and modernization of medical classifications, including nearly 70,000 new codes and more detailed 7-digit alphanumeric codes.1,2,3"

# },
# {
#     first_name: "Abi",
#     last_name: "Sundar",
#     mobile_number: "9087444213",
#     gender:1,
#     blood_group: 3,
#     date_of_birth: "01/12/2021",
#     marital_status: 1,
#     diagnosis: "As you know, ICD is a diagnostic tool used for clinical, health management, and epidemiologic purposes, enabling analysis, assessment, and comparison of the incidence and prevalence of medical conditions, morbidity, and mortality data across the world. ICD-10 includes updated codes for signs and symptoms, diseases, procedures, abnormal findings, external causes of injury or disease, and social circumstances. Importantly, ICD-10 is much more than a simple updated version of ICD-9. Rather, it’s essentially a complete revamp and modernization of medical classifications, including nearly 70,000 new codes and more detailed 7-digit alphanumeric codes.1,2,3"
  
# }
# ])

p "Created #{Patient.count} patients"