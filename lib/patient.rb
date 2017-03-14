class Patient
  attr_accessor :name, :appointments

  def initialize(name)
    self.name = name
    self.appointments = []
  end

  def add_appointment(appointment)
    if appointment.class == Appointment
      self.appointments << appointment
      appointment.patient = self
    end
  end

  def doctors
    self.appointments.collect { |appointment| appointment.doctor }
  end

end
