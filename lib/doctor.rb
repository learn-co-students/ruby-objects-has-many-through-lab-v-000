class Doctor
  attr_reader :name
  attr_accessor :patients, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def patients
    self.appointments.collect {|appointment| appointment.patient }
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self
  end

end
