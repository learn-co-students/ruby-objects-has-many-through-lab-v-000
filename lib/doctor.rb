class Doctor
  attr_accessor :name, :patient
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    @patients = appointments.collect { |a| a.patient }
  end
end
