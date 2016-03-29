class Doctor
  attr_accessor :name, :patients, :appointments
  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    @patients << appointment.patient
  end

end


