
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
  
  def new_appointment(patient, date) 
    Appointment.new(patient, self, date) 
  end
  
  # def diff(a, b)
  #   b - a
  # end
  
  # diff(1, 2) =>
  
  # def diff(b, a)
  #   b-a
  # end
  
  
  def appointments 
    Appointment.all.select { |appointment| appointment.doctor == self}
  end 
  
  def patients 
    appointments.collect { |appointment| appointment.patient}
   
  end 
  
end   