class Doctor
  attr_accessor :appointments, :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.collect {|appointment| appointment.patient}
  end

end
