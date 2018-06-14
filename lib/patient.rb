class Patient

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    appts = []
    appts = Appointment.all.select { |appt| appt.patient == self }
    appts
  end

  def doctors
    doctors = []
    self.appointments.each do |appt|
      doctors << appt.doctor
    end
    doctors
  end

  def self.all
    @@all
  end
end
