class Doctor
  
  attr_accessor :name, :appointments, :patients

  def initialize(name)
    self.name = name
    self.appointments = []
    self.patients = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.each {|appointment| @patients << appointment.patient}
    @patients
  end


end