class Patient
  attr_accessor :name, :appointments, :doctors

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    @doctors << appointment.doctor
    appointment.doctor.patients << self
    appointment.patient = self
  end
end
