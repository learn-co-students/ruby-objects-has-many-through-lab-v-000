class Appointment

  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end

  def new(date, doctor)
    @date << date
    @doctor << doctor
  end

end
