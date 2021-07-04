require_relative './patient.rb'
require_relative './appointment.rb'


class Doctor
  attr_accessor :name, :patient, :doctor
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient,date)
    Appointment.new(date,patient,self)
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end
  
  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end
end



