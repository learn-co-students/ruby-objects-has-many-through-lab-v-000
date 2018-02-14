class Patient
  attr_accessor :name, :doctor, :appointments
  def initialize(name)
    @name = name
    @appointments = []
    @doctor = doctor
  end
  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end
  def doctors
    self.appointments.collect {|appointment| appointment.doctor}
  end
end
