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

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  #def appointments
    #@appointments = appointments
    #Appointment.all.select do |appointment|
    #appointment.doctor == self
    #end
  #end


  #def appointments
  #@appointments = appointments
  # Apointment.all select do |appt|
  #appointments.doctor == self
  #end

  #def patients
  #@patients = patients
  #
  #end

end
