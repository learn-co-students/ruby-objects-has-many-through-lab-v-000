class Appointment
  attr_accessor :patient, :doctor, :date
  @@all = []

  def initialize(patient, doctor, date)
    self.patient = patient
    self.doctor = doctor
    self.date = date
    @@all << self
  end

  def self.all
    @@all
  end

end
