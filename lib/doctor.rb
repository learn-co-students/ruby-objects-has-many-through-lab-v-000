class Doctor
  attr_accessor :name, :patients

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.collect {|appointment| appointment.patient}
  end

  def appointments
    @appointments
  end

end
