class Patient
  @@all = [] 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all = []
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(date, doctor)
    appOb = Appointment.new(self, date, doctor)
  end
  
  def appointments
    Appointment.all.select do |app|
      app.patient == self 
    end 
  end 
  
  def doctors 
    appointments.map do |app|
      app.date 
    end 
  end 
end 