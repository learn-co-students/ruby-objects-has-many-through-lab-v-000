class Patient
  def initialize(name)
    @name = name
    @appointments = []
  end

  attr_accessor :name
  attr_reader :appointments

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect {|a| a.doctor}
  end
end
