class Patient #has many doctors through Appointment
  attr_accessor :name, :doctors, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end
 #get a list of doctors that belong to each patient from a patient's appt list
  def doctors
    self.appointments.collect {|appt| appt.doctor}
  end

end
