require "pry"
class Doctor
  attr_accessor :name
  attr_reader :patient
  @@all = []
  
  def initialize(name)
    @name = name
    @appointment = []
    @@all << self
  end
  
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end
  
  def appointments
    Appointment.all.select{|something|something.doctor==self}
  end

 # def add_appointment()
  #  self.appointment << appointment
   # appointment.doctor = self
# end

  def patients
   appointments.map { |s|s.patient }
  end
  
  def self.all 
    @@all
  end

end