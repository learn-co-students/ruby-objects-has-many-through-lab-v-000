class Doctor
  attr_accessor :name, :appointment

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    @appointments << appointment
  end

  def patients
    appointments.collect { |appt| appt.patient }
  end
end
