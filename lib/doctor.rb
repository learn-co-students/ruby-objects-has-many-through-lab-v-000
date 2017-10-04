class Doctor
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment_obj)
    self.appointments << appointment_obj
    appointment_obj.doctor = self
  end

  def patients
    self.appointments.collect{|a| a.patient}
  end
end
