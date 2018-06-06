class Appointment

  attr_accessor :patient, :doctor, :date
  
  @@all_appointments = []

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all_appointments << self
  end

  def self.all
    @@all_appointments
  end

  def patient
    @patient
  end

  def doctor
    @doctor
  end


end
