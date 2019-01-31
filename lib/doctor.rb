class Doctor 
  
  @@all = []
  attr_accessor :name, :patient  
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(patient, date)
    @patient = patient 
    Appointment.new
  end 
  
end 