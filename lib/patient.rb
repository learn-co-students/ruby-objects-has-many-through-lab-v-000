class Patient

  attr_accessor :name, :appointments

  def initialize(name)
    self.name = name
    self.appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

  def doctors
    appointments.map {|appointment| appointment.doctor}
  end


end
