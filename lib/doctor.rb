require "pry"
class Doctor
  @@all = []
  attr_accessor :name, :appointments, :patients
  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
    @patients = []
  end # #new is actually initialize method.

  def self.all
    @@all
  end

  def new_appointment(patient,date)
    #test says patient and date. but parameters are given actually backwards
    new_appointment = Appointment.new(date,self,patient)
    @appointments << new_appointment
    @patients << patient
    new_appointment
  end

  def appointments
    @appointments
  end

  def patients
    @patients
  end
end
