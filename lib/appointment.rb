class Appointment
  attr_accessor :date, :doctor, :patient

  @@all = []

  def initialize(date, doctor, patient)
    # binding.pry
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end

  def self.all 
    @@all
  end

end