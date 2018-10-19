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
  
  def new_appointment(date, patient) 
    Appointment.new(date, patient, self)
  end 
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self 
    end 
  end  
  
  def patients 
    appointments.map do |appointment|
      appointments.patient 
    end 
  end 

end 
