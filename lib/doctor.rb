class Doctor

  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    if appointment.doctor.nil?
      appointment.doctor = self
    end
  end

  def patients
    @appointments.map do |a|
      a.patient
    end
  end

end
