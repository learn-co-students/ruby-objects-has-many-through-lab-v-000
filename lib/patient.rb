class Patient
attr_accessor :name, :appointments

  def initialize(name)
    self.name = name
    self.appointments = []
  end
  def add_appointment(appt)
    self.appointments << appt
    appt.patient = self
  end

  def doctors
    self.appointments.map { |appt| appt.doctor }
  end

end