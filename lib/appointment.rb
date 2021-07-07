class Appointment

  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor_obj)
    @date = date
    @doctor = doctor_obj
    doctor_obj.add_appointment(self)
  end
end
