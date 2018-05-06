class Patient 
  attr_accessor :name 
  attr_reader :appointments
  
  def initialize(name)
    @name = name 
    @appointments = []
  end 
  
  def add_appointment(appointment)
    appointment.patient = self 
    @appointments << appointment
  end 
  
  def doctors 
    @appointments.map {|app| app.doctor}
  end 
  
  
end 