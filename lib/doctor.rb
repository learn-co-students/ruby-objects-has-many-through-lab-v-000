class Doctor
  attr_accessor :name, :appointments, :patients

  def initialize(name)
    self.name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
    self.patients << appointment.patient

  end

end
