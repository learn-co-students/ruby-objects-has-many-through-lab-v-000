class Appointment

  attr_accessor :doctor, :date, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.appointments << self
  end

end #class closer
