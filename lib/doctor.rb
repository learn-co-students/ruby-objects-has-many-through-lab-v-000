class Doctor 
  attr_accessor :name, :appointment
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
    
  end
  
  def appointments 
    Appointment.all.select do |appointment|
      appointment.doctor == self 
    end
  end
  
  def patients
    appointments.map(&:patient)
  end
  
  def self.all 
    @@all 
  end
end