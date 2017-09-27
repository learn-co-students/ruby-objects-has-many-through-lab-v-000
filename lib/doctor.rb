class Doctor
  def initialize(name)
    @name = name
    @appointments = []
  end
  attr_accessor :name

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end
  def patients
    self.appointments.collect{|appointment| appointment.patient}
  end
end
