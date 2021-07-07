#patients access doctors through appts
require 'pry'

class Patient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all #writer method for listing out all of the instances stored in the array
    @@all
  end

  def new_appointment(doctor, date)
    #this instance meth is taking in 2 arguments (doctor and date which are attaccess in the appt class and thus they are an instance of that class and can acess that classes methods and the doctor class methods?)
    Appointment.new(doctor, self, date)
    #creating a new instance of Appointment (passing in the arguments, self as one) Should know about this instance know since I called self??.
  end

  def appointments  #Patient class needs an instance meth `#appointments`,...
    Appointment.all.select do |appointment| #that iterates through the appointments array and...
      appointment.patient == self  #returns appointments that belong to the patient.
    end
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end
end
