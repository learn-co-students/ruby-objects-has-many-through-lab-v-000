class Doctor 
 
  attr_accessor :name
 
  @@all = []
  @@appointments = []
   
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all 
    @@all
  end
  
  def new_appointment(patient, date) 
    Appointment.new(patient, date, self)
  
  end 
  
  def appointments 
    Appointment.all.each do |appointment|
      appointment.doctor == self
    end
  end
  
  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end
  
  

end 


#genre = doctor
#song = appointment
#artist = patient