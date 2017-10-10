class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end

  def appointments
    @appointments
  end

  # def patient
  #   patient.appointment = self
  # end
end

# class Appointment
#   attr_accessor :doctor, :patient
#
#   def initialize(doctor, date)
#     @doctor = doctor
#     @date = date
#     doctor.add_appointment = self
#   end
# end
