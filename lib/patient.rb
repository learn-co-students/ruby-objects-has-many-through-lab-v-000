class Patient
  attr_accessor :name, :appointments
  @@all = []
  
  def initialize(name)
    @name = name
    @appointments = []
  end
  
  def new_appointment(doctor, date)
    
    @appointments << appointment
  end

end
    
    