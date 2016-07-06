class Patient

  attr_accessor  :name

  def initialize(name)
    @name = name
    @appointments = []
  end

# patient has many appointments.
  def add_appointment(appointment)
   @appointments << appointment
     appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    self.appointments.collect do |parts|
      parts.doctor
    end
  end
end
