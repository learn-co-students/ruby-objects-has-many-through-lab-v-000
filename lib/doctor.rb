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

  def patients
    @appointments.collect {|app| app.patient}
  end
end