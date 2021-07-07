class Patient
attr_accessor :name, :doctor, :appointment

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    new_appointment = Appointment.new(self, doctor, date)
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end
  
  def doctors
   appointments.collect do |appointment|
     appointment.doctor
   end
  end 
  
  
  
  
end