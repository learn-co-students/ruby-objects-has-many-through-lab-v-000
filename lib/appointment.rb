class Appointment

  attr_accessor :paitent, :doctor, :date

  def initalize(date, doctor)
    @doctor = doctor
    @date = date
    doctor.add_appointment(self)
  end

end


  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end

