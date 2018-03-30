class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.map {|d| d.doctor}
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

end
