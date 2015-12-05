class Doctor
  attr_accessor :appointments
  attr_reader :name

  def initialize(name)
    self.appointments = []
    @name = name
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end
end