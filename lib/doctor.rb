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
  
  def new_appointment
    #instance of patient class and creates a new appointment that belongs to the doctor instance
  end 
  
  def appointments 
    #iterates through all appointments and finds those that belong to this doctor
  end 
  
  def patients 
    #iterates over dr.'s appointments and collects the patient that belongs to each appt 
  end 
end 