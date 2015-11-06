require "spec_helper"

describe "Appointment" do
  let!(:martin) { Patient.new("Martin Jones") } 
  let!(:doctor_who) { Doctor.new("The Doctor") }
  let!(:appointment) { Appointment.new("Friday, January 32nd", doctor_who) }

  describe "#new" do 
    it "initializes with a date and a doctor" do 
      expect{Appointment.new("Thursday, October 31st", doctor_who)}.to_not raise_error
    end
  end

  describe "#patient" do
    it "belongs to a patient" do 
      appointment.patient = martin
      expect(appointment.patient).to eq(martin)
    end 
  end

  describe "#doctor" do 
    it "belongs to a doctor" do 
      expect(appointment.doctor).to eq(doctor_who)
      expect(doctor_who.appointments).to include(appointment)
    end
  end
end