class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self) #tells the new appointment that it belongs to the doctor passed in as an argument and tells doctor that it now as this appointment in its collection of appointments
  end

end
