class Patient
  attr_accessor :name, :appointments, :doctors

  def initialize(name)
    @name = name
    @appointments = Array.new
    @doctors = Array.new
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor.patients << self
    appointment.patient = self
    doctors << appointment.doctor
  end
end
