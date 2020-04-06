require "spec_helper"

describe "Appointment" do

  describe ".all" do
    it "knows about all appointments that have been created" do
      doctor_who = Doctor.new("The Doctor")
      hevydevy = Patient.new("Devin Townsend")
      doctor_who.new_appointment("Friday, January 32nd", hevydevy)
      appointment = doctor_who.new_appointment("Caturday, January Purrty2nd", hevydevy)
      doctor_who.new_appointment("Satunday, January 34nd", hevydevy)

      expect(Appointment.all).to include(appointment)
    end
  end

  describe "#new" do
    it "initializes with a date, patient, and doctor" do
      doctor_who = Doctor.new("The Doctor")
      hevydevy = Patient.new("Devin Townsend")

      expect{Appointment.new("Friday, January 32nd", hevydevy, doctor_who)}.to_not raise_error
    end
  end

  describe "#patient" do
    it "belongs to a patient" do
      doctor_who = Doctor.new("The Doctor")
      hevydevy = Patient.new("Devin Townsend")
      appointment = hevydevy.new_appointment("Friday, January 32nd", doctor_who)
      expect(appointment.patient).to eq(hevydevy)
    end
  end

  describe "#doctor" do
    it "belongs to a doctor" do
      doctor_who = Doctor.new("The Doctor")
      hevydevy = Patient.new("Devin Townsend")
      appointment = doctor_who.new_appointment("Friday, January 32nd", hevydevy)
      expect(appointment.doctor).to eq(doctor_who)
    end
  end
end
