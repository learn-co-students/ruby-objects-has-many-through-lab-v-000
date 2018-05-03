class Patient
  attr_reader :name
  attr_accessor :appointments
  
  def initialize(name)
    @name = name
    @appointments = []
  end
  
  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end
  
  def appointments
    @appointments
  end
  
  def doctors
    @appointments.collect {|app| app.doctor}
  end
  
end