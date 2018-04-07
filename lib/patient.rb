class Patient
  attr_accessor :patient, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    @appointments.collect do |appointment|
      appointment.doctor
    end.uniq
  end

end
