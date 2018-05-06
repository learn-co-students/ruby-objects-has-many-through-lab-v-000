class Doctor 
  attr_accessor :name 
  attr_reader:appointments
  
  def initialize(name)
    @name = name 
    @appointments = []
  end 
  
  def add_appointment(appointment) 
    appointment.doctor = self
    @appointments << appointment
  end 
  
  def patients
    @appointments.map {|app| app.patient }
  end 
  
  
  
  
end 

