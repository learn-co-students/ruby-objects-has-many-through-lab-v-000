class Doctor 
  attr_accessor :name 
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end  
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(patient, date) 
    Appointment.new(patient, self, date) 
  end 
  
  def appointments 
    Appointments.all.select {|appointment| appointment.doctor == self}
  end 
  
  def patients 
    appointments.collect(patients)
  end 
  
end   