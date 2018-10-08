require 'pry'
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
  
  def new_appointment(patient, date)
     Appointment.new(date, patient, self)
  end   
  
  def appointments 
    Appointment.all.select do |app|

      app.doctor == self 
    end 
  end 
  
  def patients 
    patient_array = []
    Appointment.all.each do |app|
      if app.doctor == self 
        patient_array << app.patient 
      end 
    end 
    patient_array
  end 
end 