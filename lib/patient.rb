class Patient
  attr_accessor :name, :appointments, :doctor

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    @appointments.collect { |date_time| date_time.doctor }
  end

end
