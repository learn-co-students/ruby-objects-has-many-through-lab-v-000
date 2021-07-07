require 'pry'
class Patient 
  attr_accessor :name
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all
  end
  
  # takes in an argument of a doctor and a date and creates a new Appointment. The Appointment should know that it belongs to the patient
  def new_appointment(doctor, date)
    new_appointment = Appointment.new(self, doctor, date)
  end

  # iterates through the Appointments array and returns Appointments that belong to the patient
  def appointments
    Appointment.all.select { |appointment| appointment.patient == self }
  end

  # iterates over that patient's Appointments and collects the doctor that belongs to each Appointment
  def doctors
    appointments.map {|appointment| appointment.doctor}
  end 

end  
