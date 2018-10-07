class Doctor 
  attr_accessor :name 
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self
    @appointments = []
  end  
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(date, patient) 
    Appointment.new(date, patient, self) 
  end 
  
  def appointments 
    Appointment.all.select { |appointment| appointment.doctor == self}
  end 
  
  def patients 
    Appointments.collect { |appointment| appointment.patient}
  end 
  
end   