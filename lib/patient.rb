class Patient
  attr_accessor :name, :appointments
  attr_reader

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.map { |a| a.doctor }
  end

  def appointments
    @appointments
  end
end
