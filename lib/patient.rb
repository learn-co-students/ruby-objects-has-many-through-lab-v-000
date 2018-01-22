class Patient
  attr_accessor :name, :appointments, :doctors

  def initialize(patient)
    @name = patient
    @appointments = []
    @doctors = []

  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
    appointment.doctor.patients << self
    @doctors << appointment.doctor
  end

end
