require 'date'
class Appointment

  attr_accessor :date, :patient, :doctor
  #this bit of code will automatically parse the current date
  # weekday = Time.now.strftime("%A")
  # month = Time.now.strftime("%B")
  # day = Time.now.strftime("%d")
  # date = "#{weekday}, #{month} #{day}"

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end

end
