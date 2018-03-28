class Doctor
  attr_accessor :name
  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    patients = []
    @appointments.each {|appointment| patients << appointment.patient}
    patients
  end
end
