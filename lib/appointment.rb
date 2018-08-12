class Appointment
  @@all = []
  attr_accessor :doctor, :patient, :date

  def self.all
    @@all
  end

  def initialize(patient, doctor, date)
    @doctor = doctor
    @patient = patient
    @date = date
    @@all << self
  end



end
