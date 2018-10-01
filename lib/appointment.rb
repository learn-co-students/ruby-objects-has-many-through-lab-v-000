require 'pry'

class Appointment

  attr_accessor :patient, :doctor, :date

  @@all = Array.new

  def initialize(date, doctor, patient)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

end
