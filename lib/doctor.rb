require "pry"
class Doctor
  attr_accessor :name, :appointments
  attr_reader :patient
    @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

    def self.all
      @@all
    end

  def new_appointment(date,patient)
    new_appointment = Appointment.new(patient,self,date)
    @appointments << new_appointment
    new_appointment
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end










end
