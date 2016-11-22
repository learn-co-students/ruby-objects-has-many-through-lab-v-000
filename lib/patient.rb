class Patient
  attr_accessor :appointments, :name, :doctors

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
    @doctors << appointment.doctor
  end

end
