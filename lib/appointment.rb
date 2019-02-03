class Appointment
  attr_accessor :date, :patient, :doctor

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient # belongs to a patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end
end
