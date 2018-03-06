class Appointment
  attr_accessor :doctor, :date, :patient

  def initialize(doctor, date)
    @doctor = doctor
    @date = date
    date.add_appointment(self)
    end


end
