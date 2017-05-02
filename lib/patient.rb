class Patient
  attr_accessor :name, :appointments
  attr_reader :doctors

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self unless appointment.patient == self
  end

  def doctors
    @appointments.collect {|appointment| appointment.doctor}.uniq
  end

end
