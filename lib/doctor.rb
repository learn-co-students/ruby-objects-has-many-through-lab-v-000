require 'pry'
class Doctor
  attr_accessor :name

   @@all = []

   def initialize(name)
    @name = name
    @@all<< self
  end

   def self.all
    @@all
  end

   def new_appointment(patient, date)
    Appointment.new(self, patient, date)
  end

   def appointments
    Appointment.all.select { |appointment| appointment.doctor == self}
  end

   def patients
    
    appointments.map { |doctor| doctor.patient }

   end

 end
