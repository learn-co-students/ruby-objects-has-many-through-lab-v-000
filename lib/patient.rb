class Patient
  #attributs
  attr_accessor :name, :appointments

  #initialize
  def initialize(name)
    @name = name
    @appointments = Array.new
  end

  #instance methods
  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.map {|appointment| appointment.doctor}
  end

end
