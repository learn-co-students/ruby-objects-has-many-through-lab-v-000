class Doctor
  attr_reader :name
  attr_accessor :appointments, :patients

  def initialize(name)
    @name = name
    @appointments =[]
    @patients = []
  end

  def add_appointment(appointment)
    appointment.doctor = self
    @appointments << appointment
    @patients << appointment.patient
  end
end
