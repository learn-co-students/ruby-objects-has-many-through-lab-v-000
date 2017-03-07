class Doctor
  #attributes
  attr_accessor :name, :appointments

  #initialize
  def initialize (name)
    @name = name
    @appointments = Array.new
  end

  #instance methods
  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.map {|appointment| appointment.patient}
  end

  #class methods


end
