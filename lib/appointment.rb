#appts belong to a doctor
#appts belong to a patient
class Appointment
  attr_accessor :doctor, :patient, :appointment

  def initialize(appointment, doctor)
    @appointment = appointment
    @doctor = doctor
    doctor.add_appointment(self)
    #when a new appointment is initialized, we should tell that doctor to add it to its list of appointments

  end




end
