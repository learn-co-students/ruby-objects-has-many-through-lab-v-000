require "pry"

class Doctor
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt_obj)
    @appointments << appt_obj
    appt_obj.doctor = self
  end

  def patients
    @appointments.collect do |appt_obj|
      appt_obj.patient
    end
    #binding.pry
  end

end
