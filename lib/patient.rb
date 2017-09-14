class Patient
  attr_accessor :name
  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect {|app| app.doctor}
  end

  def appointments
    @appointments
  end
end
