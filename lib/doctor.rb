require 'pry'

class Doctor
  attr_accessor :name, :appointments
  
  def initialize(name)
    @name = name
    @appointments = []
  end
  
  def add_appointment(appt)
    @appointments << appt
    appt.doctor = self
  end
  
  def patients
    @appointments.collect{|i|
     i.patient
    }
  end
end