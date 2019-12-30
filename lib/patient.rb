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

  def new_appointment(doctor, date)
  appointment = Appointment.new(date, self, doctor)
end

  def appointments
    Appointment.all.select { |a| a.patient == self }
  end

  def doctors
    appointments.map(&:doctor)
  end

end
