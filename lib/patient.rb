class Patient

  attr_accessor :name, :appointments, :doctors

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appointment)
    appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    appointments.each{|appointment| @doctors << appointment.doctor}
    @doctors
  end
end
