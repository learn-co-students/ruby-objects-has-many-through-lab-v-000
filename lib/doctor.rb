class Doctor

  attr_accessor :appointments, :name

  def initialize(name)
    self.name = name
    self.appointments = []
  end
  
  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    @appointments.collect { |appointment| appointment.patient }
  end
  
end