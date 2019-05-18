class Patient
  attr_accessor :name, :appointments, :doctors

  def initialize(name)
    self.name = name
    self.appointments = []
    self.doctors = []
  end

  def add_appointment(appt)
    appt.patient = self
    self.appointments << appt
    self.doctors << appt.doctor
  end

end
