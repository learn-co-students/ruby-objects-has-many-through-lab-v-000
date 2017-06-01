class Patient

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    unless appointments.include?(appointment)
      @appointments.push(appointment)
    end
    appointment.patient = self
    appointments
  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.collect do |appointment|
      appointment.doctor
    end.uniq
  end

end
