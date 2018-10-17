class Doctor 
  
  attr_accessor :name, :patient
  
  @@all = []
  
  def self.all
    @@all
  end 
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def new_appointment(patient) 
    Appointment.new(patient)
  end 
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self 
    end 
  end  
  
  
end 
