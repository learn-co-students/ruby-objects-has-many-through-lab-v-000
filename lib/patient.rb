require "pry"
class Patient
  attr_accessor :name, :appointments
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def new_appointment(doctor,date)
    new_appointment = Appointment.new(date,doctor,self)
    @appointments << new_appointment
    new_appointment
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end

end
