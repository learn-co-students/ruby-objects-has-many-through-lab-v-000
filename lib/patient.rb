class Patient

  attr_accessor :name, :doctors, :appointments

  def initialize(name)
    self.name = name
    self.appointments = []
    self.doctors = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect {|appointment| @doctors << appointment.doctor}
    @doctors
  end

end