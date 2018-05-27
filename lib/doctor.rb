class Doctor
  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
  end

  def patients
    self.appointments.map { |a| a.patient }
  end

end