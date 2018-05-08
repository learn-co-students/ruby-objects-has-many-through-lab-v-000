class Doctor 
  
  attr_accessor :name, :appointments
  
  def initialize(name)
    @name = name 
    @appointments = []
  end
  
  def add_appointment(appointment_instance) 
    @appointments << appointment_instance
    appointment_instance.doctor = self 
  end 
  
  def appointments 
    @appointments 
  end 
  
  def patients 
    self.appointments.collect do |appt|
      appt.patient
    end
  end 
  
end 