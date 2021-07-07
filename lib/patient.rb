require 'pry'

class Patient 
  
  @@all = []
  attr_accessor :name, :appointments  
  
  def initialize(name)
    @name = name 
    @@all << self 
    @appointments = []
  end 
  
  def new_appointment(doctor, date)
    x = Appointment.new(self, date, doctor)
    @appointments << x
    x 
     
    
  end
  
  def doctors 
    @appointments.collect do |appt|
      appt.doctor  
    end 
  end
  def self.all 
    @@all.each do |patient|
      puts "#{patient}"
    end 
  end 
  
  
  
  
end 