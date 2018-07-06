class Appointment

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :doctor, :patient, :time

  def initialize(doctor, patient, time)
    @doctor = doctor
    @patient = patient
    @time = time
    @@all << self
  end
  
end
