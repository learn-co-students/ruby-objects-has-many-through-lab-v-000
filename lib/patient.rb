class Patient
  attr_accessor :name, :appointments, :doctors


  def initialize(name)
    self.name = name
    self.appointments = []
    self.doctors = []
  end

  def add_appointment(appointment)
    appointments << appointment
    appointment.patient = self
    self.doctors << appointment.doctor
  end

end
