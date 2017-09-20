
require 'pry'
class Doctor

  attr_accessor :appointments, :name, :doctor, :patient

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(date)
    @date = date
    @appointments << date

    date.doctor

  end

  def appointments
    @appointments
  end

  def patients
      @appointments.collect do |appt|
      appt.patient
    end
  end
end
