require 'pry'
class Appointment
attr_accessor :date, :patient, :doctor

day = " " + " ,"
month = " "
date = "#{day}" + "#{month}"

  @@all = []
  
  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end
  
end