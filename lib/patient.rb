class Patient

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments.dup.freeze
  end

  def doctors

    @appointments.collect{|d| d.doctor}

  end
end
