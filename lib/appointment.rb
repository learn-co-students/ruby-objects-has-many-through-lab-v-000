class Appointment
  attr_accessor :date, :patient, :doctor

  @@all = []

  def initialize(patient, doctor, date)
    @doctor = doctor
    @patient = patient
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

end
