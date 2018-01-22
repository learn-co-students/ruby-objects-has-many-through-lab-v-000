require 'pry'

class Doctor

  attr_accessor :name, :appointments

  def initialize(name)
    self.name = name
    self.appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.collect{ |i| i.patient }
  end


end

#----

class Appointment

  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    self.date = date
    self.doctor = doctor
  end

end

#----

class Patient
  
  attr_accessor :name, :appointments
  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect{ |i| i.doctor }
  end

end

#----

martin = Patient.new("Martin Jones")

doctor = Doctor.new("The Doctor") 

appt = Appointment.new("Friday, January 32nd", doctor) 

martin.add_appointment(appt)

binding.pry




