class Patient
  attr_reader :appointments
  attr_accessor

  def initialize(name)
    @name = name
    @appointments = []

  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.map { |appointment| appointment.doctor }
  end
end
