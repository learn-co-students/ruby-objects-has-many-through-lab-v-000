class Patient
  @@all = []
  attr_accessor :name

  def initialize(name)
    @@all << self
    @name = name
    @appointments = []
  end

 def self.all
    @@all
  end 

  def new_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.collect { |appointment| appointment.doctor }
  end
end