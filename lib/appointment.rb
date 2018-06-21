  # song = appointment, genre = patient, artist = doctor

class Appointment
  attr_accessor :date, :doctor, :patient
  
  @@all = []
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end
  
  def appointments
    Appointment.all
  end
  
end