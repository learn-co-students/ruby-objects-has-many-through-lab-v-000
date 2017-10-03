require 'pry'

class Patient

  attr_accessor :name, :appointment, :doctor, :patient

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self

  end
#   Patient #add_appointment takes in an argument of an apppointment and adds that appointment to it's list of appointments and tells th
# at appointment it belongs to the patient

  def appointments
    @appointments
  end

  def doctors
    @appointments.collect do |appointment|
      appointment.doctor
    end
  end

end
