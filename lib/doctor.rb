class Doctor
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |appointment|
    appointment.doctor == self
    end
  end

  def patients
    appointments.collect do |appointment|#this is "has many through", doctor has many patients through appts
      appointment.patient
    end
  end

end
