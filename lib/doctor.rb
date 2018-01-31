class Doctor
  attr_accessor :appointments, :name
  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt)
    @appointments << appt
    appt.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.collect {|appt| appt.patient}
  end
end
