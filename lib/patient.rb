require 'pry' 

class Patient 
  attr_accessor :name  
  @@all = [] 
  
  def initialize(name) 
    @name = name 
    @@all << self
    # @appointments = []
  end
    
  def self.all 
      @@all 
  end 
 
  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
    #self.appointments << appointment
    #binding.pry
  end

  def appointments 
    Appointment.all.select { |appointment| appointment.patient ==self}
  end

  def doctors
    appointments.map(&:doctor)
  end

end
  
  
  
  
  
    
  


 