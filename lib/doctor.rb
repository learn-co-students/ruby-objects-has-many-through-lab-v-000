class Doctor

  attr_reader :name, :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(appt)
    appointments << appt
    appt.doctor = self
  end

end
