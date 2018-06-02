require "spec_helper"

describe "Patient" do

  describe "#new" do
    it "initializes with a name" do
      expect{Patient.new("Devin")}.to_not raise_error
    end
  end

  describe "#new_appointment" do
    it "given a doctor and date, creates a new appointment belonging to that patient" do
      doctor_who = Doctor.new("The Doctor")
      hevydevy = Patient.new("Devin Townsend")
      appointment = hevydevy.new_appointment(doctor_who, "Friday, January 32nd")

      expect(hevydevy.appointments).to include(appointment)
      expect(appointment.patient).to eq(hevydevy)
    end
  end

  describe "#doctors" do
    it "has many doctors through appointments" do
      doctor_who = Doctor.new("The Doctor")
      doctor_what = Doctor.new("Das Doktor")
      hevydevy = Patient.new("Devin Townsend")
      hevydevy.new_appointment(doctor_who, "Friday, January 32nd")
      hevydevy.new_appointment(doctor_what, "Saturday, January 32nd")

      expect(hevydevy.doctors).to include(doctor_who)
      expect(hevydevy.doctors).to include(doctor_what)
    end
  end
end
