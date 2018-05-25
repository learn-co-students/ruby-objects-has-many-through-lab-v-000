

class Patient 
  
  attr_accessor :name, :appointments, :doctors
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name 
  end

  def new_appointment(doctor,date)
    @appointments << Appointment.new(self,doctor,date)
  end
    

end