class Patient

  attr_reader :name, :appointment, :appointments
  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    appointment.patient = self
    self.appointments << appointment
  end

  def doctors
    self.appointments.collect{|a| a.doctor}
  end
end
