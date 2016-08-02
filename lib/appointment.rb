class Appointment

  attr_accessor :patient, :doctor

  def initialize(day, doctor)
    @day = day
    @doctor = doctor
    doctor.add_appointment(self)
  end

end
