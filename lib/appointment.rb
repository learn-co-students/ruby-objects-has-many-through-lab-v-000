#class Appointment initlized with data and a doctor

class Appointment

  attr_accessor :doctor, :date, :patient

  def initialize(date,doctor)
    @doctor = doctor
    @date = date
    doctor.add_appointment(self)
  end
end
