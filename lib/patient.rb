class Patient
  attr_reader :doctors, :appointments, :name

  def initialize(name)
    @name = name
    @doctors = []
    @appointments = []
  end

  def add_appointment(appt)
    @appointments << appt
    @doctors << appt.doctor
    appt.patient = self
  end


end
