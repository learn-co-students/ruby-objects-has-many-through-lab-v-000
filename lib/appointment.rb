# class Appointment
#   attr_accessor :date, :doctor, :patient
#
#   def initialize(date, doctor)
#     @date = date
#     @doctor = doctor
#     @appointments = []
#
#   end
#
#   def add_appointment(appointment)
#     @appointments << appointment
#     self.patient
#   end
#
#   def patient
#     @patient
#   end
#
#   def doctor
#     @doctor = doctor
#     doctor.add_appointment(self)
#   end
#
# end
require 'pry'
require_relative "patient.rb"
require_relative "doctor.rb"

class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @doctor = doctor
    @date = date
    doctor.add_appointment(self)
  end

  def patient
    @patient
  end

  def doctor
    @doctor
  end

end

doctor_who = Doctor.new("The Doctor")
appointment = Appointment.new("Friday, January 32nd", doctor_who)

binding.pry
