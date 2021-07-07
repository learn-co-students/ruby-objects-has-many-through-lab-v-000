class Appointment
@@all = []
attr_accessor :patient, :date, :doctor

  def initialize(patient, doctor, date)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

end
