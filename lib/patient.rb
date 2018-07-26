class Patient
  attr_accessor :name 
  @@all_patients = []
  
  def initialize(name)
    @name = name 
    @@all_patients << self 
  end 
  
  def self.all 
    @@all_patients
  end 
  
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end 
  
  def appointments 
    Appointment.all.select do |appointment|
      if appointment.patient == self 
        appointment.patient   
      end 
    end 
  end 
  
  def doctors
    appointments.map do |appointment|
      appointment.doctor 
    end 
  end 
  
end 
