class Appointment
  attr_accessor :date, :patient, :doctor

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self) # adds self (includes Appointment and Doctor instances) to Doctor @appointment array
    #binding.pry
  end
end
