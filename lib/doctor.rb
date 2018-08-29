class Doctor
  
  @@all = []
  
  attr_accessor :name
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointment.all.select { |a| a.doctor == self}
  end
  
  def patients
    self.appointments.collect { |a| a.patient }
  end
  
end