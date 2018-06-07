class Patient

  attr_accessor :name

 @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor= "The Doctor", date= "Friday, January 32nd")
    self.appointment.new(patient= "Devin Townsend", doctor, date)
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end


end
