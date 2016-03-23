class Patient
  attr_reader :name
  attr_accessor :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments.push(appointment)
    appointment.patient = self
  end

  def doctors
    self.appointments.collect { |appointment| appointment.doctor }
  end

end
