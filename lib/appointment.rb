class Appointment
  attr_accessor :date, :doctor, :patient
  @@all = []

  #instantiates a new Appointment object with a given date, doctor, and patient
  #and stores it in the @@all class variable array
  def initialize(date, doctor, patient)
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end

  #allows user to access the class variable array @@all
  def self.all
    @@all
  end
end
