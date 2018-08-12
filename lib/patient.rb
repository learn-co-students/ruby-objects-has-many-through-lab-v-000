class Patient
  attr_accessor :name, :appointments
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def new_appointment(doctor,date)
    app = Appointment.new(date, self, doctor)
    @appointments << app
  end

  def appointments
    Appointment.all.select do |i|
      i.patient == self
    end
  end

  def self.all
    @@all
  end

  def doctors
    @appointments.collect do |appointment|
     appointment.doctor
    end
  end
end
