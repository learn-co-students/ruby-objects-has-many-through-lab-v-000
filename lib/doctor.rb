class Doctor
  attr_accessor :name 
  @@all = []
  
  def self.all
    @@all
  end 
  
  
  def initialize(name)
    @name = name
    @@all << self 
  end

  def new_appointment(name, date)
    Appointment.new(name, self, date)
  end
  
  def appointments 
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end 
  
    def patients 
      appointments.map do |appointment|
        appointment.patient 
      end
  end 
  
end