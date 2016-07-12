class Patient
  attr_reader :name
  attr_accessor :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment unless self.appointments.include?(appointment)
    appointment.patient = self unless appointment.patient == self
  end

  def doctors
    self.appointments.collect{|a| a.doctor}
  end
end