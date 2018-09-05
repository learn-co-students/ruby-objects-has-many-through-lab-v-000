class Appointment
  @@all = []
  attr_accessor :name
  attr_reader :doctor, :patient

  def initialize(date, doctor, patient)
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end
  
  def self.all
    @@all
  end

  def doctor=(doctor)
    @doctor = doctor
    doctor.new_appointment(self, date) unless doctor.appointments.include?(self)
  end

  def patient=(patient)
    @patient = patient
    patient.new_appointment(self, date) unless patient.appointments.include?(self)
  end
end