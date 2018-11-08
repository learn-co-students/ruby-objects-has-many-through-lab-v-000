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

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def patients
    Appointment.all.map {|appt| appt.patient if appt.doctor == self}
  end



end
