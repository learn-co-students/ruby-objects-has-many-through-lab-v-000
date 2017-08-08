class Appointment
  attr_accessor :date, :appointment, :patient, :doctor

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)   #I had issues with coming up with this line!!!
    # The #initialize method should tell the
    # new appointment that it belongs to the doctor passed in as an argument and tell the doctor that it now has this appointment in its collection
    # of appointments. Use the Doctor#add_appointment method here.
  end

end
