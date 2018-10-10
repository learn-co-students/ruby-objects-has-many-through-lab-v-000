class Doctor
  @@all = []
  
  attr_accessor :name, :appointment, :patient, :date
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    
    
    
  end
    
 
  
end