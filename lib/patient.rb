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
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end 
  
  def appointments 
    Appointment.all.select do |app|
      app.patient == self 
    end 
  end 
  
  def doctors 
    doctor_array = []
    Appointment.all.each do |app|
      if app.patient == self 
        doctor_array <<  app.doctor 
      end 
    end 
    doctor_array
  end 
  
end 