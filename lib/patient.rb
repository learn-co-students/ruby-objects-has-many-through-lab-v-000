class Patient
  attr_accessor :name
  attr_reader :appointments, :doctors

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appt)
    @appointments << appt
    appt.patient = self
    @doctors << appt.doctor
  end

end