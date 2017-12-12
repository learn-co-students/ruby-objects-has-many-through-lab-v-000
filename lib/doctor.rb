class Doctor
attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    patients = []
    self.appointments.collect {|appt|patients << appt.patient}
    patients
  end

end
