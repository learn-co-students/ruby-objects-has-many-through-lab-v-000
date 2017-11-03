class Appointment
  attr_reader :date
  attr_accessor :patient
  attr_accessor :doctor

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    @doctor.appointments << self
  end

end
