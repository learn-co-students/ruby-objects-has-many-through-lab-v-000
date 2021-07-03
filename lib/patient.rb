class Patient 
 attr_accessor :name, :appointment, :doctor
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all 
    @@all 
  end

  def appointments 
    Appointment.all.select do |appointment| 
      appointment.patient == self 
    end
  end
 
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
  def doctors
    self.appointments.map { |appointment| appointment.doctor }
  end

end