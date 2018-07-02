class Patient
  
  @@all = []
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end 
  
  def self.all 
    @@all 
  end 
  
  def doctors
  end 
  


end 