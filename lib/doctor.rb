class Doctor
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(new_appointment)
    self.appointments << new_appointment
    new_appointment.doctor = self
  end

  def patients
    self.appointments.collect {|appt| appt.patient}
  end
end
