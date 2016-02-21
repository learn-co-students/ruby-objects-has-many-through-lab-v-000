class Patient
  attr_accessor :name, :appointments, :add_appointment
  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    appointments.collect {|app| app.doctor}
  end
end