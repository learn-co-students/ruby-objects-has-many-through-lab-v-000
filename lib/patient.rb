require 'pry'

class Patient
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    # binding.pry
    Appointment.new(self, doctor, date)
  end
  
  def appointments
    Appointment.all.select {|app| app.patient == self}
  end
  
  def doctors
    appointments.map { |app| app.doctor}
  end
end