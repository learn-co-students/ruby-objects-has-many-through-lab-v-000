class Appointment
  attr_accessor :date, :doctor
  attr_reader :patient
  @@all = []

  def initialize(patient, date, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

  end
