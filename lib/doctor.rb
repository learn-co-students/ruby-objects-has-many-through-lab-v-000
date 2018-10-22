class Doctor 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name) 
    @name = name 
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self
    end 
  end 
  
  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
    appointment
  end 
  
  def patients 
    appointments.collect do |appt|
      appt.patient 
    end
  end 
end 