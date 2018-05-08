class Patient
  
  attr_accessor :name, :appointments
  
  def initialize(name)
    @name = name 
    @appointments = []
  end 
  
  def add_appointment(appointment_instance) 
    @appointments << appointment_instance
    appointment_instance.patient = self 
  end 
  
  def appointments 
    @appointments
  end 
  
  def doctors 
    self.appointments.collect do |doctor_who|
      doctor_who.doctor
    end 
  end 
  
end 