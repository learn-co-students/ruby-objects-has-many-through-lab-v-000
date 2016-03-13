class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)

    @date = date
    @doctor = doctor
    #@patient = patient
    #@appointments = []
    doctor.add_appointment(self)
    #patient.add_appointment(self)
  end
end