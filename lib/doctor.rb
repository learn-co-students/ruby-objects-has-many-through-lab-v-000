class Doctor

  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt)
    appointments << appt
    appt.doctor = self
  end

  def patients
    appointments.collect {|appt| appt.patient}
  end

end
