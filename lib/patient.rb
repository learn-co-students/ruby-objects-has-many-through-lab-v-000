class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @doctors = []
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    @appointments.collect {|appointment| appointment.doctor}
  end

  def appointments
    @appointments
  end

end
