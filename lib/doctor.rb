class Doctor
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = Array.new
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    appointments << appointment
    appointment.doctor = self
  end

  def patients
    appointments.collect {|appointment| appointment.patient}
  end
end
