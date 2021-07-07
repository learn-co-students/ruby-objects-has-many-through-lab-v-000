class Patient
  
  attr_accessor :name, :appointments, :doctors
  @@all = []
  
  def initialize(name)
    @name = name 
    @appointments = []
    @doctors = []
    @@all << self 
  end 
    
    def self.all
      @@all 
    end 
    
    def new_appointment(doctor, date)
      appt = Appointment.new(date, self, doctor)
      @appointments << appt
      @doctors << doctor 
      Appointment.all << appt 
      appt 
    end 
end 