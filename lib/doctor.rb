require "pry"
#this lab was given two different ways to answers in the two parts by two different
#tech coaches. Benjamin Aschenbrenner(part 1) Matt Cassara (part 2)
#Kevin Webster agrees with Matt (part 2 - 2)

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
    Appointment.new(date,self,patient)
    #my code V
    #new_appointment = Appointment.new(date,self,patient)
    #@appointments << new_appointment
    #@patients << patient <- this is creating a new spot in memory
    #new_appointment
  end

  def appointments
    Appointment.all.select {|a| a.doctor == self }
    #the arrays are like tables in a database.
    #use select because it expects the return of the value.
    #returns all the appointments whose doctor object matches this instances id.
    #@appointments
  end

  def patients
    #appointments because we are using a relationship through the appointments method
    appointments.collect do  |a| #collect because we need the array returned
      a.patient
    end
    #@patients <- used to be my code
  end
end
