class Patient

  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    self.name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment unless self.appointments.include?(appointment)
    appointment.patient = self
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end

end
