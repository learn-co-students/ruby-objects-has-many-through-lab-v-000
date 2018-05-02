class Doctor
  
  attr_accessor :name, :appointments
  
  def initialize(name)
    @name = name 
    @appointments = []
  end
  
  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self 
  end
  
  def patients
    self.appointments.collect do |appt|
      appt.patient 
    end
  end
  
end