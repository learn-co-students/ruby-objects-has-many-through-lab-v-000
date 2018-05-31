require "pry"
class Appointment

  @@all = []

  attr_accessor :date, :doctor, :patient

  def initialize(patient, doctor, date)
 # binding.pry
      @date = date
      @doctor = doctor
      @patient = patient
      @@all << self
      # binding.pry
  end

  def self.all
    @@all
  end
end
