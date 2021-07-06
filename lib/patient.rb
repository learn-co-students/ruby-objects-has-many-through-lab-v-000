class Patient
  
  attr_accessor :name, :doctor
  
  def initialize(name)
    @name = name
    @appointments = []
  end
  
  def appointments
    @appointments
  end
  
  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end
  
  def doctors
    self.appointments.collect do |appointments|
      appointments.doctor
    end
  end
  
    

end