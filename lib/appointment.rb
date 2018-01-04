class Appointment
  attr_accessor :date, :doctor, :patient
  attr_reader

  def initialize(date, doctor)
    @date = date

    doctor.add_appointment(self)
  end

  def patient
    @patient
  end

  def doctor
    @doctor
  end
end
