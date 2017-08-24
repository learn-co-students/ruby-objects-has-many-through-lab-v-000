class Appointment
  attr_accessor :doctor, :patient

  def initialize(date, doctor)
    @doctor = doctor
    doctor.add_appointment(self)
  end


end

# An appointment should be initialized with a date (as a string, like "Monday, August 1st"), and a doctor. The #initialize method should tell the new appointment that it belongs to the doctor passed in as an argument and tell the doctor that it now has this appointment in its collection of appointments. Use the Doctor#add_appointment method here.
