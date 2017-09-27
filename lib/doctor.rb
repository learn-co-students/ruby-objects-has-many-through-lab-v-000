class Doctor
  attr_accessor :appointments, :name

  def initialize(name)
    @name = name
    @appointments = [] #The method should also tell that appointment that it belongs to that doctor.
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    @appointments.collect { |a| a.patient }
  end
end
