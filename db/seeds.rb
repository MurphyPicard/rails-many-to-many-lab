# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

##############################################
# After creating a join model and adding in your assocations, add instances of your join model here in the seeds.rb file,then modify seed data entries for doctors and patients to be associated with instances of your join model (visits, appointments, check_ups, or whatever you've named your join model).
##############################################
Doctor.destroy_all
Patient.destroy_all



dr_manny = Doctor.create(name:"Manuel Manny", specialty:"Yardwork")
dr_nick = Doctor.create(name:"Nick", specialty:"Heart")
dr_house = Doctor.create(name:"Gregory House", specialty:"Surgeon")
dr_gray = Doctor.create(name:"Meredith Grey", specialty:"Hip Surgery")

m_burns = Patient.create(name: "Montgomery Burns", age: 123, gender: "male")
grace_hopper = Patient.create(name: "Grace Hopper", age: 109, gender:"female")
mr_bombastic = Patient.create(name: "M. Bombastic", age: 64, gender: "simply_fantastic")
elephant_man = Patient.create(name: "Joseph Merrick", age: 27, gender:"male")
storm = Patient.create(name:"Storm", age: 32, gender:"female")
zoe = Patient.create(name: "Zoe Barnes", age: 27, gender:"female")
sansa = Patient.create(name: "Sansa Stark", age: 22, gender: "female")
sea_biscuit = Patient.create(name: "C. Biscuit", age: 52, gender: "not_horse")
molly_millions  = Patient.create(name: "Molly 'Street Samurai' Millions", age: 27, gender:"female")
squanchy = Patient.create(name: "Squanchy", age: -12, gender:"squanchy_male")
ada_lovelace = Patient.create(name: "Ada Lovelace", age: 200, gender:"female")

# Add Appointments here
appt1 = Appointment.create(doctor_id: dr_nick.id, patient_id: m_burns.id, ailment: "heart", appt_datetime: DateTime.current)
appt2 = Appointment.create(doctor_id: dr_nick.id, patient_id: grace_hopper.id, ailment: "heart", appt_datetime: DateTime.current)
appt3 = Appointment.create(doctor_id: dr_nick.id, patient_id: mr_bombastic.id, ailment: "heart", appt_datetime: DateTime.current)
appt4 = Appointment.create(doctor_id: dr_manny.id, patient_id: elephant_man.id, ailment: "trim", appt_datetime: DateTime.current)
appt5 = Appointment.create(doctor_id: dr_manny.id, patient_id: storm.id, ailment: "trim", appt_datetime: DateTime.current)
appt6 = Appointment.create(doctor_id: dr_manny.id, patient_id: zoe.id, ailment: "trim", appt_datetime: DateTime.current)
appt7 = Appointment.create(doctor_id: dr_house.id, patient_id: sansa.id, ailment: "surgery", appt_datetime: DateTime.current)
appt8 = Appointment.create(doctor_id: dr_house.id, patient_id: sea_biscuit.id, ailment: "surgery", appt_datetime: DateTime.current)
appt9 = Appointment.create(doctor_id: dr_house.id, patient_id: molly_millions.id, ailment: "surgery", appt_datetime: DateTime.current)
appt10 = Appointment.create(doctor_id: dr_house.id, patient_id: squanchy.id, ailment: "surgery", appt_datetime: DateTime.current)
appt11 = Appointment.create(doctor_id: dr_house.id, patient_id: ada_lovelace.id, ailment: "surgery", appt_datetime: DateTime.current)
appt12 = Appointment.create(doctor_id: dr_gray.id, patient_id: m_burns.id, ailment: "hip", appt_datetime: DateTime.current)
appt13 = Appointment.create(doctor_id: dr_gray.id, patient_id: grace_hopper.id, ailment: "hip", appt_datetime: DateTime.current)
appt14 = Appointment.create(doctor_id: dr_gray.id, patient_id: ada_lovelace.id, ailment: "hip", appt_datetime: DateTime.current)
