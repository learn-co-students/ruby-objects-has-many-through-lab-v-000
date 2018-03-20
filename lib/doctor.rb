class Doctor

  attr_accessor :name, :patients, :appointments

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
    @appointments.map { |appointment| appointment.patient }
  end

end
