class Appointment

  attr_accessor :date, :doctor, :patient

  @@appointments = []

  def initialize(date, doctor, patient)
    @date = date
    @doctor = doctor
    @patient = patient
    @@appointments << self
  end

  def self.all
    @@appointments
  end

end
