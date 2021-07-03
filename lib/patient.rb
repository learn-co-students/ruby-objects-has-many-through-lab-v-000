require 'pry'

class Patient
  attr_accessor :name, :appointments, :doctor
  
  @@all = [] #=> keeps track of all instances of patient
  
  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end
  
  def new_appointment(doctor, date)
    new_appt = Appointment.new(self, doctor, date)
    @appointments << new_appt
    new_appt
  end
  
  def doctors
    self.appointments.collect { |appt| appt.doctor }
  end
  
  def self.all
    @@all
  end
  
  
  
end