class Patient
  attr_accessor :name, :appointment
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointment = appointment
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    doctors_array = @appointments.collect {|appointment| appointment.doctor}
    doctors_array
  end

end
