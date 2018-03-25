class Patient
  attr_accessor :name, :doctor, :appointment, :doctors, :appointments

  def initialize(name)
    @name = name
    @doctors = []
    @appointments = []
  end

  # def doctors
  #   @doctors
  # end

  def add_appointment(appointment)
    @appointments << appointment
    @doctors << appointment.doctor
    appointment.patient = self
  end
end
