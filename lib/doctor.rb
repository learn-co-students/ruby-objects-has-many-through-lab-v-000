require 'pry'
class Doctor 
  
  attr_accessor :name, :patient 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
    @appointments = []
  end 
  
  def self.all 
    @@all
  end 
  
  def new_appointment(patient, date)
    new_app = Appointment.new(patient, self, date)
    @appointments << new_app
    new_app
  end 
  
  def appointments
    @appointments
  end 
  
  def patients
    new_patients = []
    @appointments.each do |app|
      new_patients << app.patient 
    end 
    new_patients.uniq 
  end 
  
end 