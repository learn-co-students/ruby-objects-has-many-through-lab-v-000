class Appointment
  attr_accessor :date, :patient, :doctor
  @@all = []
  def initialize(patient, doctor, date)
    @date = date
    @patient = patient
    @doctor = doctor
    doctor.patients << patient
    doctor.appointments << self
    patient.doctors << doctor
    patient.appointments << self
    @@all << self
  end
  def self.all
    @@all << self
  end
end
