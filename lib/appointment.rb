class Appointment
  attr_accessor :patient, :doctor, :date

  @@all = []

  def self.all
    @@all
  end

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

end
