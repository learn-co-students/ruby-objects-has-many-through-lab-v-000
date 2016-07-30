class Patient

  attr_reader :name, :appointments, :doctors

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appt)
    appt.doctor.patients << self
    appt.patient = self
    appointments << appt
    doctors << appt.doctor
  end

end
