class Appointment

  attr_accessor :name, :patient, :doctor

  def initialize(name, doctor)
    @name = name
    @doctor = []
    doctor.add_appointment(self)
  end

  def patient
    @patient
  end

  def doctor
    @doctor
  end

end
