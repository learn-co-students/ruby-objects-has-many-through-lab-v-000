class Patient
  attr_accessor :name, :appointments
  
  @@all = []
  
  def self.all()
    @@all
  end
  
  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
    @@all << self
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
    @appointments << appointment
    appointment
  end
  
  
  def doctors()
    Appointment.all.each do |appointment|
      if appointment.patient == self
        @doctors << appointment.doctor
      end
    end
    @doctors
  end
  
end