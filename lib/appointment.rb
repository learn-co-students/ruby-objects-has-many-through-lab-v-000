class Appointment

attr_accessor :doctor, :patient, :date

  def initialize(date, doctor)
    @date = ""
    @doctor = doctor
    doctor.add_appointment(self)
  end



end
