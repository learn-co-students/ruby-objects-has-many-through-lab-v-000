class Patient
  attr_accessor :name

  @@all = []
  #@appointments = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor,date)
    appointment = Appointment.new(date,self, doctor)
    #@appointments << appointment
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    appointments.collect { |appointment| appointment.doctor}
  end

end
