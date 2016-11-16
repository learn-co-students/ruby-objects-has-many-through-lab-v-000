require 'pry'

class Appointment
attr_accessor :doctor, :patient, :appointment

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self) unless doctor.appointments.include?(self)
  end


end

# binding.pry
# @day = day
# @doctor = doctor
# doctor.add_appointment(self) unless doctor.appointment.include?(self)
