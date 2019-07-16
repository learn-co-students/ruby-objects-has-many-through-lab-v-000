class Appointment

  attr_accessor :date, :patient, :doctor

  @@all =[]

  def initialize(date, patient, doctor)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

end
