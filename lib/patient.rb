class Patient
  attr_accessor :appointments
  attr_reader :name, :doctors

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

  def doctors
    appointments.collect{|a| a.doctor}
  end

end