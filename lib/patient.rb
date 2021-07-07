require 'pry'

class Patient
  attr_accessor :name, :doctor, :date
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.each do |appointment|
      appointment.patient == self
    end
  end

  def doctors

    Appointment.all.select do |appointment|
    appointment.patient == self
   end.map {|a| a.doctor}
  end
end
