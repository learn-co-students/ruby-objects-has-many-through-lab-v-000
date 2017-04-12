class Doctor

  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments.push(appointment)
    appointment.doctor = self
  end

  def patients
    self.appointments.collect {|a| a.patient}
  end
end
