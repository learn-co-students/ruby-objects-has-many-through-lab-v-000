class Appointment
  attr_accessor :date, :doctor, :patient

  # Appointment #new initializes with a date and a doctor
  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    @patient = patient

    @doctor.add_appointment(self)
  end

  # Appointment #patient belongs to a patient
  def patient=(patient)
    @patient = patient
  end

  # Appointment #doctor belongs to a doctor
  def doctor=(doctor)
    @doctor = doctor
  end
end
