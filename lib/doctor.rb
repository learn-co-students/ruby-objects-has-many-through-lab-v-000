class Doctor 
  
  attr_accessor :name, :appointment, :patient  
  
  @@all = [] 
   
  
  def initialize(name)
    @name = name #A docter initialized with a name and is saved in the @@all array.
    @@all << self 
    
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(patient, date)
    Appointment.new(patient, self, date) #creates new appointment/ belongs to doctor 
  end 
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self 
    end 
  end 
  
  def patients 
   appointments.map do |appointment|
     appointment.patients 
   end 
 end 
   

end 