class Doctor
  attr_reader :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt)
    @appointments << appt
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.collect {|appt| appt.patient}
  end
end
