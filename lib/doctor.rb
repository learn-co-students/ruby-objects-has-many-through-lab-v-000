require 'pry'
class Doctor
=begin
  Variables
    name : String.new
    appointments : Array.new
    patients : Array.new
  Functions
    add_appointment( appt_object )
      * add appointment to list
      * appointment belongs to this doctor
      * add patient to list of patients via appointments
=end
  attr_accessor :name, :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = Array.new
    @patients = Array.new
  end

  def add_appointment(appt_object)
    @appointments << appt_object if !@appointments.include?(appt_object)
    @patients << appt_object.patient

  end

end
