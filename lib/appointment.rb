class Appointment

  attr_accessor :doctor, :patient, :date

  def initialize(date, doctor)
    @date = date
    @doctors = doctor
    doctor.add_appointment(self)
  end

end
