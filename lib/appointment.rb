require "pry"
class Appointment
  @@all = [] #how to find Appointment appointment.all.find
  def initialize(date,doctor,patient)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

  def patient
    @patient
  end

  def doctor
    @doctor
  end
end
