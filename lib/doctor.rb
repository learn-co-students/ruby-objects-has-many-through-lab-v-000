require 'pry'
class Doctor
  attr_accessor :name, :patient, :date, :doctor, :appointment

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, date, self)
  end

  def appointments
    Appointment.all.select do |appt|
    appt.doctor == self
  end
end

  def patients
    appointments.collect do |appts|
    appts.patient
    #binding.pry
  end
end

end
