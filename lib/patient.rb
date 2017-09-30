class Patient

  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    appointment.doctor.patients << self
    self.appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    appointments.collect { |a| a.doctor}
  end

end
