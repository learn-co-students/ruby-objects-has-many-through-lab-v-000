class Patient
   attr_accessor :appointments, :doctors, :name
  
 
  def initialize(name)
    @name = name
     @appointments = []
     
  end
  
  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end
  

  
  def doctors
    @doctors = doctor
    appointments.doctors = self 

  end
  
end