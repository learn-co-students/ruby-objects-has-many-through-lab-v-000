class Appointment

  attr_accessor :doctor, :date, :patient

  def initialize (date, doctor)
    @date = date
    @doctor = doctor
    self.doctor.add_appointment(self)
  end



end
