class Appointment

  attr_reader  :date
  attr_accessor :patient ,:doctor


  def initialize(date, doctor)
    @doctor = doctor
    doctor.add_appointment(self)
    @date = date
  end

end
