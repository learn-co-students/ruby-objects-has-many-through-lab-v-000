class Doctor

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  #def new_appointment(date, patient)
  #  @new_appointment = new appointment
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
