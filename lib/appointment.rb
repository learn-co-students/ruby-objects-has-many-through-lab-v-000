class Appointment

# appointments belong to it's patients and a doctor
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    @doctor.add_appointment(self)
  end

end
