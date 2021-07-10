class Doctor
  attr_accessor :name, :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.collect { |app| app.patient }
  end
end
