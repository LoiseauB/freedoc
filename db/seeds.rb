# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Patient.destroy_all

#50.times do
#  Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
  
#end

#Doctor.destroy_all

#10.times do
#  Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: ["généraliste", "dentiste", "chir", "ostéo", "chiro", "kiné", "marabou"].sample, zip_code: Faker::Address.zip_code)
#end

#Appointment.destroy_all

#100.times do
#  Appointment.create(date: Faker::Time.between(from: DateTime.now - 5, to: DateTime.now), doctor: Doctor.all.sample, patient: Patient.all.sample)

#end

#------------------------------------

City.destroy_all

10.times do
  City.create(name: Faker::Address.city)
end

Speciality.destroy_all

Speciality.create(name: "dentiste")
Speciality.create(name: "généraliste")
Speciality.create(name: "chir")
Speciality.create(name: "psy")
Speciality.create(name: "kiné")
Speciality.create(name: "marabou")
Speciality.create(name: "osthéo")
Speciality.create(name: "chiro")

Patient.destroy_all

50.times do
  Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample )
end


Doctor.destroy_all

10.times do
  Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,city: City.all.sample, zip_code: Faker::Address.zip_code)
end


Appointment.destroy_all

100.times do
  Appointment.create(date: Faker::Time.between(from: DateTime.now - 5, to: DateTime.now), doctor: Doctor.all.sample, patient: Patient.all.sample, speciality: Speciality.all.sample, city: City.all.sample)
end










