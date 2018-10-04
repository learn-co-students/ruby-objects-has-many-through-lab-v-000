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
    appointment = Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select { |appt| appt.patient == self }
  end

  def doctors
    results = []
    appts = self.appointments
    appts.each do |appt|
      results << appt.doctor
    end
    return results
  end
end
