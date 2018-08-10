require 'pry'

class Patient 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    date = Appointment.new(self, doctor, date)
  end 
  
  def appointments 
    Appointment.all.select do |appt|
      appt.patient == self 
    end
  end 
  
  def doctors 
    self.appointments.collect {|appt| appt.doctor}
  end 
end