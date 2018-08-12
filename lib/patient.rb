class Patient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor,date)
    app = Appointment.new(date, self, doctor)
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
    Doctor.all.select do |doctor|
      doctor.patients.include?(self)
    end
  end
end
