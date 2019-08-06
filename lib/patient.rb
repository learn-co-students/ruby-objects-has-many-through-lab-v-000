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
    self.appointments << appointment
    appointment.patient = self
  end

  def doctors
    doctors = []
    self.appointments.map {|appt|doctors << appt.doctor}
    doctors
  end
end
