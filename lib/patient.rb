class Patient 
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end
  
  def appointments
    Appointment.all.select{|app| app.patient == self}
  end 
  
  def doctors 
    Appointment.all.collect do |app|
      if app.patient == self 
        app.doctor
      end 
    end 
  end
end 