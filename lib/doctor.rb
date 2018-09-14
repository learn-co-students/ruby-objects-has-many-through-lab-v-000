require 'pry'

class Doctor
attr_accessor :name, :appointments, :patient

  @@all = []
  
  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments #=> returns all appointments that the doctor has
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
  
  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date) #=> can pass 3 arguments when using self
    @appointments << appointment
    appointment.doctor = self
    appointment
  end
  
  def patients #=> has many patients, through appts
    self.appointments.collect do |appt|
      appt.patient
      #binding.pry
    end
  end
end