class Patient
  attr_accessor :name, :appointments

  #///CLASS METHODS///#

  #///INSTANCE METHODS///#
  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.add_patient(self)
  end
  
  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end

end