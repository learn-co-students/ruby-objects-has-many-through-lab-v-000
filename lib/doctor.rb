class Doctor

  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(appointment)
    appointment.doctor = self
    self.appointments << appointment
  end

  def appointments
    @appointments
  end

  def patients
    @patients
  end

end
