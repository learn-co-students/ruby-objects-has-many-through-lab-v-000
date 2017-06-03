class Doctor
  attr_accessor :name, :appointments
  attr_reader :patients

  def initialize(name)
    @name = name
    @appointments = []

  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.collect{|appointment| appointment.patient}
  end

  def appointments
    @appointments
  end
  
end