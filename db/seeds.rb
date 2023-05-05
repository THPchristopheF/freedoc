# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all
# City.destroy_all

# 100.times do
#   city=City.create!(name: Faker::Address.city)
#  end
    
  100.times do
    patient=Patient.create!(first_name: Faker::Name.unique.first_name,last_name: Faker::Name.unique.last_name, city_id:Faker::Number.within(range: 501..599))
  end 

  100.times do
    doctor=Doctor.create!(first_name: Faker::Name.unique.first_name,last_name: Faker::Name.unique.last_name, specialty: "doctoor", zip_code: Faker::Address.zip_code, city_id:Faker::Number.within(range: 501..599))
  end

  100.times do
    appointment=Appointment.create!(patient_id: Faker::Number.within(range: 1..99),doctor_id: Faker::Number.within(range: 1..99),date: Faker::Time.forward(days: 5,  period: :evening, format: :long),city_id:Faker::Number.within(range: 501..599))
  end



