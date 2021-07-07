class Patient
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do |appt|
      appt.patient == self
    end
  end

  def doctors
    doctors = []
    appointments.each do |appt|
      doctors << appt.doctor
    end
    doctors
  end

 def self.all
   @@all
 end

end
