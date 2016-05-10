class Appointment

  attr_accessor :doctor, :date, :patient

  def initialize(date,doctor)
   @doctor = doctor
   @date = date
   doctor.appointments << self
   
  end


# def doctor


# end

# def patient


# end










end