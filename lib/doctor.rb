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
  
  def new_appointment(appointment_date, patient)
    appointment = Appointment.new(appointment_date, self , patient)
  end
  
  def appointments
    Appointment.all.select{|appointment| appointment.doctor == self}
  end

  def patients
    self.appointments.collect{|appointment| appointment.patient}
  end
end