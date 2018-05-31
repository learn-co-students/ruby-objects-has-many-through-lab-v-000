

class Patient 
  
  attr_accessor :name, :appointments, :doctors
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name 
    @appointments = []
    @doctors = []
  end

  def new_appointment(doctor,date)
    appointment = Appointment.new(self,doctor,date)
    @appointments << appointment
    appointment
  end
    
   def doctors 
    @doctors = @appointments.collect{|appointment| appointment.doctor}
    @doctors
   end


end