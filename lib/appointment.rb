require 'pry'
class Appointment
  attr_accessor :date, :patient, :doctor
  
  @@all = []
  
  def initialize(patient, doctor, date)
    @doctor = doctor 
    @date = date 
    @patient = patient
    @@all << self 
    #binding.pry
  end 
  
  def self.all 
    @@all
  end
end 