require "pry"

class Doctor
  
  attr_accessor :name
  
  @@all = [ ]
  
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
    Appointment.all.select {|item| item.doctor == self}
  end
  
  def patients 
    patient_list = []
    self.appointments.each {|item| patient_list << item.patient}
    patient_list
  end
end
