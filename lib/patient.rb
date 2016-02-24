class Patient
  attr_accessor :name, :appointments

  def initialize(name, appointments = [])
    @name = name
    @appointments = appointments
  end

  def appointments
    @appointments
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

end
