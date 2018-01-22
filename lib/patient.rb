class Patient

  attr_reader :name
  attr_accessor :doctor, :appointment

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect {|appointment| appointment.doctor}
  end

end #<-- end class -->