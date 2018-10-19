require 'pry'

class Appointment
  attr_accessor :patient, :doctor, :date
  
  @@all = []
  
  def initialize(patient, doctor, date)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self 
    # binding.pry
  end 

  def self.all
    @@all
  end
  
  def patient

  end 
  
end 

  # def songs 
  #   Song.all.select do |song|
  #     song.genre == self 
  #   end
  # end 
  
    #   it "belongs to a patient" do
    #   doctor_who = Doctor.new("The Doctor")
    #   hevydevy = Patient.new("Devin Townsend")
    #   appointment = doctor_who.new_appointment(hevydevy, "Friday, January 32nd")
    #   expect(appointment.patient).to eq(hevydevy)
    # end