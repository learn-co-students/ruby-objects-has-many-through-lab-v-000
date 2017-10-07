class Patient
  attr_accessor :name, :doctors, :appointments
  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    appointment.doctor.add_appointment(appointment)
    appointment.patient = self
    @appointments << appointment
  end

  def doctors
    @appointments.collect do |appointment|
      appointment.doctor
    end
  end

end
