class Doctor
  attr_accessor :appointments
 attr_reader :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    @appointments.collect {|doctor| doctor.patient}
  end
end
