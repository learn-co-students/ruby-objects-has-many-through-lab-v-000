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

  def new_appointment(doctor, date= "Friday, January 32nd")
    Appointment.new(doctor, self, date)
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end


end
