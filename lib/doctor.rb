class Doctor
  attr_accessor :name, :appointments, :patients
  def initialize(name)
    @name = name
    @appointments = []
  end
  def add_appointment(appt)
    self.appointments << appt
    appt.doctor = self
  end
  def patients
    self.appointments.map {|x| x.patient}
  end
end
