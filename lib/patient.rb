class Patient
  def initialize(name)
    @name = name
    @appointments = []
  end

  attr_accessor :name, :appointments

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    @appointments.collect { |appt| appt.doctor  }
  end
end
