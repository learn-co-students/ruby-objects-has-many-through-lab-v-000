class Patient

  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    if appointment.patient.nil?
      appointment.patient = self
    end
  end

  def doctors
    appointments.map do |a|
      a.doctor
    end
  end

end
