class Doctor #has many patients through Appointment
  attr_accessor :name, :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end
  #access patients through appointments
  def patients
    self.appointments.collect {|appt| appt.patient}
  end

end
