class Doctor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient_instance)
    new.Appointment(date, patient_instance, self)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor = self
    end
  end

end
