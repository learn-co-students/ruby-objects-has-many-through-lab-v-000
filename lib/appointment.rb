class Appointment
  attr_accessor :date, :patient
  attr_reader :doctor

  def initialize(date, doctor)
    self.date = date
    self.doctor = doctor
  end

  def doctor=(doctor)
    @doctor = doctor
    doctor.appointments.push(self) unless doctor.appointments.include?(self)
  end
end
