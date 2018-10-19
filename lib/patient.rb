require 'pry'

class Patient
  attr_accessor :name
  
  @@all = []
  
  def initialize(name) 
    @name = name 
    @@all << self
  end 
  
  def self.all
    @@all 
  end 
  
  def appointments 
    binding.pry
    Appointment.all.collect do |appt|
      appt.patient == self
    end
    #iterates through the appointments array and returns appointments that belong to the patient.
    # binding.pry
  end 
  
    #   Song.all.select do |song|
    #   song.artist == self
    # end
  
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end 
  
  
  

  
  # def doctors 
  #   # iterates over that patient's appointments and collects the doctor that belongs to each appointment.
  # end 
end 