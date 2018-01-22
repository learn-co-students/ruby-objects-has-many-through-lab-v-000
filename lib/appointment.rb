class Appointment
  attr_accessor :doctor, :patient
  attr_reader :date

  def initialize(date, doctor) # => Date is a string like "Friday, January 22nd"
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end

end
