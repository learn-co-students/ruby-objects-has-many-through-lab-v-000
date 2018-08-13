class Doctor
  attr_accessor :name, :appointments
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date,patient)
    app = Appointment.new(date, patient, self)
    @appointments << app
    app
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.collect do |appointment|
     appointment.patient
    end
  end

  def name
    @name
  end

end
