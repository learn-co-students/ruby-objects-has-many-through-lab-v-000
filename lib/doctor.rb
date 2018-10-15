class Doctor
  @@all = []
  
  attr_accessor :name, :appointments, :patient, :date
  
  
  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
    @appointments << appointment
    appointment
  end
  
  def appointments
    Appointment.all.select do |appt|
    appt.doctor == self
    
    end
    
  end
  
  def patients
    self.appointments.collect do |appt|
    appt.patient  
    end
  end
end
    
  
 
    
      
    #The Doctor class needs an instance method, #patients, that iterates over that doctor's appointments and collects the patient that belongs to each appointment.
      
      
   #Doctor(self) has many patients through appointments
    #create a method to collect all appointments' of patients 
    
 
    
    
   
    
    
 
    
  
    
