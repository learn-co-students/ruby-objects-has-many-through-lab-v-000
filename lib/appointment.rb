class Appointment
  attr_accessor :doctor, :date, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    @patient = patient
    doctor.appointments << self
    # binding.pry

  end



end
