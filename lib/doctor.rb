require 'pry'

class Doctor

  @@all = Array.new

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    new_appointment = Appointment.new(patient, self, date)
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    all_patients = Array.new
    Appointment.all.each do |appointment|
      if appointment.doctor == self
        all_patients << appointment.patient
      end
    end
    all_patients
  end


end
