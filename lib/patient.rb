class Patient
  attr_accessor :name, :appointments, :patient

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    @doctors = appointments.collect { |a| a.doctor }
  end
end
