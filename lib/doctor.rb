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

  def new_appointment(date, patient)
    Appointment.new(patient, date, self)
  end

  def appointments
    Appointment.all.select do |x|
      x.doctor == self
        end
  end

  def patients
    appointments.collect do |x|
      x.patient
    end
  end

end
