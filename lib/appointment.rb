class Appointment

  @@all = []

  attr_accessor :doctor, :patient

  def initialize(patient, date, doctor)
    @patient = patient
    @date = date
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end
  
end
