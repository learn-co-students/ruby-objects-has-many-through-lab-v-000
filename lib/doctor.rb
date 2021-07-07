require 'pry'

class Doctor
  attr_accessor :name, :appointments
  @@all=[]

  def initialize(name)
    @name=name
    @@all<<self
    @appointments=[]
    # doctor=Doctor.new(self)
  end

  def self.all
    @@all
  end

  def appointments
    @appointments
  end

  def new_appointment(patient,date)
    appointment=Appointment.new(patient, self, date)
    @appointments<<appointment
    appointment
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end
end
