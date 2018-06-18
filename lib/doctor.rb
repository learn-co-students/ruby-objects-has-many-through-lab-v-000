require 'pry'

class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    # given a date and a patient, create a new appointment
    Appointment.new(patient, self, date)
  end

  def appointments
    # iterate through all appointments & find those belonging to this doctor
    Appointment.all.select do |a|
      # binding.pry
      a.doctor == self
    end
  end

  def patients
    # iterate over the doctor's appointments & collect the patient that belongs to each appointment
    appointments.map(&:patient)
  end
end
