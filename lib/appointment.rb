class Appointment

  attr_accessor :time, :doctor, :patient

  def initialize(doctor, patient, time)
    @doctor = doctor
    @patient = patient
    @time = time
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

end
