class Doctor 
  
  @@all = []
   
  attr_accessor :name
   
  def initialize(name)
     @name = name 
     @@all << self 
  end 
   
  def self.all
    @@all
  end
  

  def new_appointment(patient,date)
    Appointment.new(patient,self,date)
  end 
   
  def appointments 
   Appointment.all.select {|appointment| appointment.doctor == self}
  end 
   
  def patients 
  self.appointments.collect {|appointment| appointment.patient}
  end 

end 