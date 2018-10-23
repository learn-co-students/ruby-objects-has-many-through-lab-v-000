class Appointment

  attr_accessor :doctor, :patient, :date

  @@all_apt = []

  def initialize (patient, doctor, date)
      @patient = patient
      @doctor = doctor
      @date = date
      @@all_apt << self
  end

  def self.all
    @@all_apt
  end

  def patients
    self.patient
  end

  def doctors
    self.doctor
  end

end
