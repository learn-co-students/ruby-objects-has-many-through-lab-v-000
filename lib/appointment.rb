class Appointment
  @@all = []

  def self.all
    @@all
  end

  attr_accessor :patient, :doctor, :date

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
    #patient.appointments << self
  end



end
