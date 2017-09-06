class Appointment

  attr_accessor :patient, :doctor
  attr_reader :date

  def initialize(date, doctor) #initializes with a date and a doctor
    @date = date
    @doctor = doctor
    self.doctor.appointments << self
  end


end
