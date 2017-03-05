class Appointment
  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.appointments << self 
  end

  attr_accessor :patient, :doctor, :date

end
