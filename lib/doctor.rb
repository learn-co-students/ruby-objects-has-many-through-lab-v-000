class Doctor

  attr_accessor :appointments, :name, :patients

  def initialize(name)
    @appointments = []
    @patients = []
    @name = name
  end

  def add_appointment(appointment)
    appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    appointments.each {|appointment| @patients << appointment.patient}
    @patients
  end
end
