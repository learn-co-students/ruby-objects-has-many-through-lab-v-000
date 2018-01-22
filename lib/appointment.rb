class Appointment

          attr_accessor :doctor, :date, :patient
    def initialize(date, doctor)
      @appointments = []
      @doctor = doctor
#       nitialize method should tell the new appointment that
#       it belongs to the doctor passed in as an argument and
#       tell the doctor that it now has this appointme
               doctor.add_appointment(self)
    end

  
  def appointments
    @appointments
  end

end