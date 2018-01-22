class Doctor
  attr_accessor :name, :patient, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    # self.appointments
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.collect { |appoint| appoint.patient }
  end
end
