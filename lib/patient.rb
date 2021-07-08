class Patient 
  
  attr_reader :appointments
  
  attr_accessor :name, :doctors 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @doctors = []
    @@all << self
  end 

  
  def new_appointment(doctor, date) 
    Appointment.new(self, date, doctor)
    
  end 
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end 
  
  def self.all 
    @@all
  end 
  
  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end
  
end 


#genre = doctor
#song = appointment
#artist = patient