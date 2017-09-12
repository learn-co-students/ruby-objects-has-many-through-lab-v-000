class Patient

  attr_accessor :patient , :name, :appointments, :doctors
  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    @doctors << appointment.doctor
    appointment.patient = self
  end
end
