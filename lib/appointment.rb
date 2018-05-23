class Appointment
  attr_accessor :date, :patient, :doctor

  @@all = []  #class variable that begins as an empty array

  def initialize(patient, doctor, date) #initialized with a date, patient, doctor.
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self #The appt should be saved in the @@all array
  end

  def self.all #class method that lists each appt in the class variable
    @@all
  end
end
