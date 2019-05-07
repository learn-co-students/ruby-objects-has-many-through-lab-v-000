class Appointment
  attr_accessor :patient, :doctor, :date
  
  @@all = []

  def intialize(patient, doctor, date)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
end

  def self.all
  @@all
end
end
