class Patient
  attr_accessor :name, :appointments 
  
  def initialize(name)
    @name = name 
    @appointments = []
  end
  
  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self 
  end
  
  def doctors
    self.appointments.collect do |appt|
      appt.doctor 
    end
  end
end