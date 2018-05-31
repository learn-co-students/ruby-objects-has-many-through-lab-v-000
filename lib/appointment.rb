class Appointment
  attr_accessor :patient, :doctor, :date
  @@all = []

  def self.all
    @@all
  end

  def initialize
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def patient
    @patient
  end

  def doctor
    @doctor
  end

end
