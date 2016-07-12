class Doctor
  attr_reader :name
  attr_accessor :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment unless self.appointments.include?(appointment)
    appointment.doctor = self unless appointment.doctor == self
  end

  def patients
    self.appointments.collect{|a| a.patient}
  end
end