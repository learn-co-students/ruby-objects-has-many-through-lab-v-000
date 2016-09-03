class Doctor

  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    self.name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment unless @appointments.include?(appointment)
    appointment.doctor = self
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end

end
