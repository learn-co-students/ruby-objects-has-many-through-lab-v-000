class Patient
  attr_accessor :name, :doctors

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect do |patient|
      patient.doctor
    end
  end
end
