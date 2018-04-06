class Patient

  attr_reader :appointments
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []

  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    @appointments.collect { |appt| appt.doctor }.uniq
  end
end
