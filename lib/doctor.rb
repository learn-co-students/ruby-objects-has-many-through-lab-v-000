class Doctor 
  attr_accessor :name 
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end  
  
  def new_appointment(patient, date) 
    Appointment.new(patient, date) 
  end 
  
  def appointments 
    appointments.all.find {|appointments| appointment.doctor == self}
  end 
  
  def patients 
    #appointments.collect()
  end 