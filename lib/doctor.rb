class Doctor
  #has_many appointments, has_many patients through appointments
  attr_accessor :name, :appointments


  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
  end

  def patients
    self.appointments.collect{|a| a.patient}
  end

end
