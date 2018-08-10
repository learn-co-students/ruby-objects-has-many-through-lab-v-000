class Doctor 
  
  attr_accessor :doc_name
  
  @@all = [] 
  
  def initialize(doc_name)
    @name = doc_name
    @@all << self
  end
  
  def self.all 
    @@all
  end 
  
  def new_appointment(date, patient)
    appointment = Appointment.new(date, self, patient)
  end 
  
  def appointments 
    Appointment.all.select {|appointment| appointment.doctor == self}
  end 
  
  def patients 
    self.appointments.collect {|appointment| appointment.patient}
  end 
  
end