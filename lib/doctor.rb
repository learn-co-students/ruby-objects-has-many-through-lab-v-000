class Doctor
  attr_accessor :name, :appointment

  def initialize(name)
    @appointments=[]
    @name = name
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor=(self)
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.collect {|a| a.patient}
  end
end
