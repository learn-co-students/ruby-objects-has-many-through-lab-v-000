require 'pry'
class Patient
  attr_accessor :name

  @@all = []

  def self.all
    @@all
    end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, doctor)
    Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select do |appt|
    appt.patient
  end
end

  def doctors
    appointments.collect do |appts|
      appts.doctor
    #  binding.pry
    end
  end

end
