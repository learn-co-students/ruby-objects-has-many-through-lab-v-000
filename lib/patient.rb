class Patient

attr_accessor :name, :appointment, :appointments, :doctor

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect do |a|
      a.doctor
    end
  end

end
