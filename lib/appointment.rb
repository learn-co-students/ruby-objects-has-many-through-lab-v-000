class Appointment
  attr_accessor :patient, :doctor, :date

  @@all = []

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
    self.doctor.appointments << self
    self.patient.appointments << self
  end

  def self.all
    @@all
  end

end
