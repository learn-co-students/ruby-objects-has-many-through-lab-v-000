class Appointment

    attr_accessor :patient, :doctor

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    @patient = patient
    doctor.add_appointment(self)
  end


end