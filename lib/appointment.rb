class Appointment
  attr_accessor :name, :doctor, :patient
  @@all = []
  def initialize(patient,doctor,date)
    @patient= patient
    @doctor= doctor
    @dates= date
    @@all << self
  end
  def self.all
    @@all
  end
end
