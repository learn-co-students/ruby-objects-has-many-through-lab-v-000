class Doctor

  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    appointment.doctor = self
    self.appointments << appointment
  end

  def patients
    self.appointments.collect { |appointment| appointment.patient }
  end

end
