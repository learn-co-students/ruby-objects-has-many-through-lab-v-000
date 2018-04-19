class Doctor
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end
  
  def appointments
    @appointments
  end
  
  def add_appointment(appointment)
    @appointments << appointment
  end
  
  def patients
    @patients
  end
  
end