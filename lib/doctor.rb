class Doctor
  attr_accessor :name, :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt)
    appt.doctor = self
    self.appointments << appt
  end

  def patients
    self.appointments.collect {|appt| appt.patient}
  end

end
