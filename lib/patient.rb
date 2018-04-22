class Patient
  attr_accessor :name, :doctors, :appointments

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appointment)
    appointment.patient = self
    @appointments << appointment
    @doctors << appointment.doctor
  end

  def doctors
    @doctors
  end

end
