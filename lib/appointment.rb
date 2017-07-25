require 'pry'

class Appointment
  attr_accessor :time, :patient
  attr_reader :doctor

  def initialize(time, doctor)
    @time = time

    # calls custom doctor=(doctor) method
    self.doctor = doctor

  end
  # doctor.appointments to include appointment expected [object] got []
  def doctor=(doctor)
    # knows about doctor
    @doctor = doctor unless @doctor

    # doctor knows about appointment
    doctor.appointments << self unless doctor.appointments.include?(self)
  end

end
