class Appointment
  attr_accessor :date, :patient, :doctor

  def initialize(date, doctor)
    @date = date
    @appointments = []
    doctor.add_appointment(self) #Adds the appointment to the instance of Class Doctor related to doctor initialized
  end
end
