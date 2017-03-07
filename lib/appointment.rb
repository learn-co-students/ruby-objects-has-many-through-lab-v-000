class Appointment
  #attributs
  attr_accessor :date, :doctor, :patient

  #initialize
  def initialize (date, doctor)
    @date = date
    @doctor = doctor
    doctor.appointments << self
  end

end
