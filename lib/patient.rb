class Patient

  attr_accessor :name, :appointment, :doctor

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect {|appointment| appointment.doctor}
  end

end
