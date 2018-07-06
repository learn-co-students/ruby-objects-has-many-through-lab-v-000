require 'pry'
class Doctor
  attr_accessor :name, :appointments

  
@@all = []

  def initialize(name)
    @name = name
    @all_doctors = []
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self}
  end

 def patients
    Appointment.all.map { |appointment| appointment.patient}
  end


  def new_appointment(patient, date)
    Appointment.new(self, patient, date)
  end



end