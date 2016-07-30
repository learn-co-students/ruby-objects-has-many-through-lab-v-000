class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    if appointment.class == Appointment
      self.appointments << appointment
      appointment.patient = self
    end
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end

end
