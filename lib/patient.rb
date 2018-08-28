require 'pry'

class Patient
  attr_accessor

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  # takes in an argument of a doctor and a date and creates a new appointment.
  # The appointment should know that it belongs to the patient.
  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  #  iterates through the appointments array and returns appointments that belong to the patient.
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  # iterates over that patient's appointments and collects the doctor that belongs to each appointment.
  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end

end
