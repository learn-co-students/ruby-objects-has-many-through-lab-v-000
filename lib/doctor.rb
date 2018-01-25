class Doctor
  attr_accessor :name, :patient, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.collect { |date_time| date_time.patient }
  end

end
