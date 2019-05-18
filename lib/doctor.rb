class Doctor
  attr_accessor :name, :appointments, :patients

  def initialize(name)
    self.name = name
    self.appointments = []
    self.patients = []
  end

  def add_appointment(appt)
    self.appointments << appt
    self.patients << appt.patient
  end

end
