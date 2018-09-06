require 'pry'

class Patient
  attr_accessor :name, :doctor
  
  @@all = []
  
  def initialize(name)
    @name = name
    @doctor = doctor
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    appointments.map {|appointment| appointment.doctor}
  end
  
end