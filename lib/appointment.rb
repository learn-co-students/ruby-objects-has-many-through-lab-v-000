class Appointment
  
  attr_accessor :date, :doctor, :patient

  @@all = []

  def self.all
    @@all
  end
  
  def initialize(patient, doctor, date)
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end

end