class Doctor

  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    appointment.doctor = self
    @appointments << appointment
  end

  def patients
    @appointments.map do |appointment|
      appointment.patient
    end
  end

end