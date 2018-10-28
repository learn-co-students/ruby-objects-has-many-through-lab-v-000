class Appointment
  attr_accessor :patient, :date, :doctor

  @@all = []

  def self.all
    @@all
  end

def initialize(patient, date, doctor)
  @patient = patient
  @date = date
  @doctor = doctor
  @@all << self
end

end
