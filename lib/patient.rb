class Patient

attr_accessor :name, :appointments

def initialize(name)
  @name = name
  @appointments = []
end

  def add_appointment(appointment)
    appointment.patient = self
    self.appointments << appointment
  end

  def doctors
    self.appointments.collect {|appointment| appointment.doctor}
  end
end
