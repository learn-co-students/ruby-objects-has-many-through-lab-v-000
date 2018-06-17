require_relative "./appointment.rb"
require_relative "./patient.rb"

class Doctor 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_appointment(patient, date) 
    Appointment.new(patient, self, date)
  end
  
  def appointments 
    Appointment.all.select {|a| a.doctor == self } 
  end 
  
  def patients 
    appointments.map(&:patient).uniq 
  end 
  
  def self.all 
    @@all 
  end 
  
end 