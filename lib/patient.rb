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

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end
  #pay attention to the order of the arguments in the specfile too if they don't match, make them

  def appointments
    Appointment.all.select do |appt|
      appt.patient == self
    end
  end

  def doctors
    appointments.collect do |appts|
      appts.doctor
      #binding.pry
    end
  end

end
