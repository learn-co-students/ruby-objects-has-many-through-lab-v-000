class Patient

  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments.push(appointment)
    appointment.patient = self
  end

  def doctors
    self.appointments.collect {|a| a.doctor}
  end

end
