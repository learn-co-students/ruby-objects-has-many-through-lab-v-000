#appointments belong to Doctor
#has many appointments
#have many patients through appointments

class Doctor
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

#has many patients through appointments
  def patients
    self.appointments.collect {|appointment| appointment.patient}
  end
end
