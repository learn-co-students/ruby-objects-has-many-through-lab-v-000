class Patient
  attr_accessor :appointments, :doctors


  def initialize(name)
    @appointments = []
    @name = name
    @doctors = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
    @doctors << appointment.doctor
  end

end
