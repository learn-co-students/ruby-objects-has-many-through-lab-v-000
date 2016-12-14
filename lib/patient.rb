class Patient

attr_accessor :name, :appointments, :doctor

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self #telling it it belongs to patient
  end

  def appointments
    @appointments
  end

  def doctors
    self.appointments.collect {|appoint| appoint.doctor}
  end

end
