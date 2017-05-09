class Patient
  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    @appointments.collect{|appt| appt.doctor}
  end
end
