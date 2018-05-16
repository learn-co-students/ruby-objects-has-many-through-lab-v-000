require "pry"
#everthing is done THROUGH the new_appointment method
#and therefore the appointment class
#has many objects THROUGH

class Patient
  attr_accessor :name, :doctors, :appointments
  def initialize(name)
    @name = name
    @doctors = []
    @appointments = [] #test says it requires appointments belonging to that patient.
  end

  def new_appointment(doctor,date)
    Appointment.new(date,doctor,self)
    #new_appointment = Appointment.new(date,doctor,self)
    #my code based off benjamins code
    #had problems with what was being put in parameters
    #because tests got wrong returns.
    #used pry to correct.
    #doctor.appointments << new_appointment #<< pushing isn't needed
    #doctor.patients << self
    #@doctors << doctor
    #@appointments << new_appointment
    #new_appointment
  end

  def appointments #its expecting a method called appointments
    #has many doctors through appointments
    Appointment.all.select {|a| a.patient == self }
    #the arrays are like tables in a database.
    #use select because it expects the return of the value.
    #returns all the appointments whose doctor object matches this instances id.
    #@appointments
  end

  def doctors
    appointments.collect do |a| #we're calling upon the apointments method inside
      #the doctors method.
      a.doctor
    end
  end
end

#appointments is the join model between the patients and doctors
#ex; appointments lists the associations between doctors and patients

#there will will be a slow change from the syntax and mindset of part 1 to part 2
#as more languages are learned
