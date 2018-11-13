class Patient

  attr_accessor :name, :appointments
  @@all=[]

  def initialize(name)
    @name=name
    @@all<<self
    @appointments=[]
  end

  def self.all
    @@all
  end

  def doctors
    @appointments.collect {|appointment| appointment.doctor}
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

end
