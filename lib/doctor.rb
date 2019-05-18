class Doctor
  def initialize(name)
    @name = name
    @appointments = []
  end

  #attr_accessor :name
  attr_reader :appointments, :name

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.collect {|appointment| appointment.patient}
  end
end
