class Appointment

attr_accessor :name, :doctor, :date, :patient

  def initialize(date = "Friday, September 29th", name, doctor)
    @name = name
    @doctor = doctor
    doctor.add_appointment(self)
  end

end
