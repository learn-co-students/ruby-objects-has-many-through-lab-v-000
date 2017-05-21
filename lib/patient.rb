class Patient
  attr_reader :songs, :appointments
  def initialize(name)
    @appointments = []
    @name = name
  end
  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end
  def doctors
    @appointments.collect { |appointment| appointment.doctor}
  end
end
