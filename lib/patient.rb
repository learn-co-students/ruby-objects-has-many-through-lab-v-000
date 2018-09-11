class Patient

  attr_accessor :appointments

  @@all = []

  def initialize(name)
    @appointments = []
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end 

end
