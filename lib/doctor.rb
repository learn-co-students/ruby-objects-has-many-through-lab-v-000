require 'pry'

class Doctor 
  
  @@all = []
  attr_accessor :name, :appointments 
  
  def initialize(name)
    @name = name 
    @@all << self 
    @appointments = []
  end 
  
  def new_appointment(patient, date)
    x = Appointment.new(patient, date, self)
    @appointments << x 
    x 
    
  end 
    
  def patients 
    @appointments.collect do |appt|
      appt.patient 
    end 
  end 
  
  def self.all 
    @@all.each do |doctor|
      puts "#{doctor}"
    end 
  end 
  
  
  
  
  
end 