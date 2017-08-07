class Patient

  def initialize(name)
    @name = name
    @appointments = Array.new
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    appointments << appointment
    appointment.patient = self
  end

  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end
end
