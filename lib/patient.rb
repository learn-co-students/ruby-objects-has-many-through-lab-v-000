class Patient
  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt)
    self.appointments << appt
    appt.patient = self
  end

  def doctors
    self.appointments.collect {|appt| appt.doctor}
  end
end
