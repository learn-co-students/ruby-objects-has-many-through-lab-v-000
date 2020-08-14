class Patient
  attr_accessor :appointments
  attr_reader :name

  def initialize(name)
    @name = name
    self.appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end
end