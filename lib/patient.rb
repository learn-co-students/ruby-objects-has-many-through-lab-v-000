class Patient
  attr_reader :name
  attr_accessor :appointments, :doctors

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
end
