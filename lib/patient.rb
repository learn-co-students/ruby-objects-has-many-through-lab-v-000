require "pry"
class Patient
  attr_accessor :name, :doctors, :appointments
  def initialize(name)
    @name = name
    @doctors = []
    @appointments = [] #test says it requires appointments belonging to that patient.
  end

  def new_appointment(doctor,date)
    #test says doctor and date. but parameters are given actually backwards
    new_appointment = Appointment.new(date,doctor,self)
    #had problems with what was being put in parameters
    #because tests got wrong returns.
    #used pry to correct.
    doctor.appointments << new_appointment
    doctor.patients << self
    @doctors << doctor
    @appointments << new_appointment
    new_appointment
  end

  def doctors
    @doctors
  end
end
