class Patient
  attr_accessor :name

  def initialize(name)
    self.name = name
    @appointments = []
  end

  def add_appointment(appointment_obj)
    @appointments << appointment_obj
    appointment_obj.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    appointments.collect {|a| a.doctor}
  end
end
