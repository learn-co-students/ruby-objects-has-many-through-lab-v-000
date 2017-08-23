class Appointment
  attr_accessor :doctor, :date, :patient

  def initialize(date, doctor)
    @doctor = doctor
    @date = date.to_s #need to make date a string!
    doctor.add_appointment(self) #tell the new appointment that it belongs to the doctor passed in as an argument and tell the doctor that it now has this appointment in its collection of appointments
  end

end
