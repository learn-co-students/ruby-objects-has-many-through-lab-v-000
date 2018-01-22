class Patient
  attr_reader :name, :appointments
  
  def initialize(name)
    @name = name
    @appointments = []
  end
  
  def add_appointment(appointment)
    appointment.doctor.patients << self
    appointments << appointment
    appointment.patient = self
  end
  
  def doctors
    appointments.collect { |appointment| appointment.doctor }
  end
end