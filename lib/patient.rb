class Patient
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    appointment.patient = self
    self.appointments << appointment
  end

  def doctors
    self.appointments.map{|appointment| appointment.doctor}.uniq
  end
end