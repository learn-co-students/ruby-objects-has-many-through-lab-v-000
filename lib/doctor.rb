class Doctor

  def initialize(name)
    @name = name
    @appointments = []
  end

  def name
    @name.dup.freeze
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self unless appointment.doctor == self
  end

  def appointments
    @appointments.dup.freeze
  end

  def patients
    @appointments.collect{|p| p.patient}
  end
end
