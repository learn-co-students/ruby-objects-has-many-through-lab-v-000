#####new
#initializes with a date and a doctor
#####patient
#belongs to a patient
#####doctor
#belongs to a doctor

class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end

end
