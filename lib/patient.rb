class Patient

  attr_accessor :name, :doctors, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt)
      appointments << appt
      appt.patient = self
  end

  def doctors
    appointments.collect { |a| a.doctor }
  end

end
