class Doctor
  attr_accessor :name, :appointments
  attr_reader

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
    @appointments.map { |a| a.patient }
  end
end
