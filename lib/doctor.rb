require 'pry'
class Doctor

  attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @patients = []
    @@all << self
  end

  def self.all
    @@all
  end

def new_appointment(patient, date)
   Appointment.new(patient, self, date)
end


def appointments
  Appointment.all.select {|apt| apt.doctor == self}
end


def patients
  #binding.pry
  appointments.each do |apt|
  @patients << apt.patient
end
@patients
end



end
