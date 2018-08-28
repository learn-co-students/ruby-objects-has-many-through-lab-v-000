class Doctor 
  attr_accessor :name
  @@all=[]
  
  def initialize(name)
    @name=name 
    @@all<< self

  end 
  def self.all 
    @@all 
  end
  def new_appointment(patient, date)
    a=Appointment.new(patient,self,date)

  end
  def appointments 
    Appointment.all.select{|a| a.doctor ==self}
  end 
  def patients
    self.appointments.collect{|a|a.patient}
  end 
    
end 

