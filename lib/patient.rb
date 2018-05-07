class Patient
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt)
    appt.patient = self if !appt.patient.is_a?(Patient)
    self.appointments << appt
  end

  def doctors
    self.appointments.collect {|appt| appt.doctor }
  end
end
