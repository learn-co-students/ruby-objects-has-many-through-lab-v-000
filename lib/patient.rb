class Patient
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select{|a| a.patient == self}
  end

  def self.all
    @@all
  end

  def doctors
    Appointment.all.collect {|a| a.doctor}
  end
end
